/*
 * libiio - AD9361 IIO streaming example
 *
 * Copyright (C) 2014 IABG mbH
 * Author: Michael Feilen <feilen_at_iabg.de>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 **/

#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <signal.h>
#include <stdio.h>

#include <sys/time.h>

#ifdef __APPLE__
#include <iio/iio.h>
#else
#include <iio.h>
#endif

/* helper macros */
#define MHZ(x) ((long long)(x*1000000.0 + .5))
#define GHZ(x) ((long long)(x*1000000000.0 + .5))

#define ASSERT(expr) { \
	if (!(expr)) { \
		(void) fprintf(stderr, "assertion failed (%s:%d)\n", __FILE__, __LINE__); \
		(void) abort(); \
	} \
}

/* RX is input, TX is output */
enum iodev { RX, TX };

/* common RX and TX streaming params */
struct stream_cfg {
	long long bw_hz; // Analog banwidth in Hz
	long long fs_hz; // Baseband sample rate in Hz
	long long lo_hz; // Local oscillator frequency in Hz
	const char* rfport; // Port name
};

/* static scratch mem for strings */
static char tmpstr[64];

/* IIO structs required for streaming */
static struct iio_context *ctx   = NULL;
static struct iio_channel *rx0_i = NULL;
static struct iio_channel *rx0_q = NULL;
static struct iio_channel *tx0_i = NULL;
static struct iio_channel *tx0_q = NULL;
static struct iio_buffer  *rxbuf = NULL;
static struct iio_buffer  *txbuf = NULL;

static bool stop;

/* cleanup and exit */
static void shutdown()
{
	printf("* Destroying buffers\n");
	if (rxbuf) { iio_buffer_destroy(rxbuf); }
	if (txbuf) { iio_buffer_destroy(txbuf); }

	printf("* Disabling streaming channels\n");
	if (rx0_i) { iio_channel_disable(rx0_i); }
	if (rx0_q) { iio_channel_disable(rx0_q); }
	if (tx0_i) { iio_channel_disable(tx0_i); }
	if (tx0_q) { iio_channel_disable(tx0_q); }

	printf("* Destroying context\n");
	if (ctx) { iio_context_destroy(ctx); }
	exit(0);
}

static void handle_sig(int sig)
{
	printf("Waiting for process to finish...\n");
	stop = true;
}

/* check return value of attr_write function */
static void errchk(int v, const char* what) {
	 if (v < 0) { fprintf(stderr, "Error %d writing to channel \"%s\"\nvalue may not be supported.\n", v, what); shutdown(); }
}

/* write attribute: long long int */
static void wr_ch_lli(struct iio_channel *chn, const char* what, long long val)
{
	errchk(iio_channel_attr_write_longlong(chn, what, val), what);
}

/* write attribute: string */
static void wr_ch_str(struct iio_channel *chn, const char* what, const char* str)
{
	errchk(iio_channel_attr_write(chn, what, str), what);
}

/* helper function generating channel names */
static char* get_ch_name(const char* type, int id)
{
	snprintf(tmpstr, sizeof(tmpstr), "%s%d", type, id);
	return tmpstr;
}

/* returns ad9361 phy device */
static struct iio_device* get_ad9361_phy(struct iio_context *ctx)
{
	struct iio_device *dev =  iio_context_find_device(ctx, "ad9361-phy");
	ASSERT(dev && "No ad9361-phy found");
	return dev;
}

/* finds AD9361 streaming IIO devices */
static bool get_ad9361_stream_dev(struct iio_context *ctx, enum iodev d, struct iio_device **dev)
{
	switch (d) {
	case TX: *dev = iio_context_find_device(ctx, "cf-ad9361-dds-core-lpc"); return *dev != NULL;
	case RX: *dev = iio_context_find_device(ctx, "cf-ad9361-lpc");  return *dev != NULL;
	default: ASSERT(0); return false;
	}
}

/* finds AD9361 streaming IIO channels */
static bool get_ad9361_stream_ch(struct iio_context *ctx, enum iodev d, struct iio_device *dev, int chid, struct iio_channel **chn)
{
	*chn = iio_device_find_channel(dev, get_ch_name("voltage", chid), d == TX);
	if (!*chn)
		*chn = iio_device_find_channel(dev, get_ch_name("altvoltage", chid), d == TX);
	return *chn != NULL;
}

/* finds AD9361 phy IIO configuration channel with id chid */
static bool get_phy_chan(struct iio_context *ctx, enum iodev d, int chid, struct iio_channel **chn)
{
	switch (d) {
	case RX: *chn = iio_device_find_channel(get_ad9361_phy(ctx), get_ch_name("voltage", chid), false); return *chn != NULL;
	case TX: *chn = iio_device_find_channel(get_ad9361_phy(ctx), get_ch_name("voltage", chid), true);  return *chn != NULL;
	default: ASSERT(0); return false;
	}
}

/* finds AD9361 local oscillator IIO configuration channels */
static bool get_lo_chan(struct iio_context *ctx, enum iodev d, struct iio_channel **chn)
{
	switch (d) {
	 // LO chan is always output, i.e. true
	case RX: *chn = iio_device_find_channel(get_ad9361_phy(ctx), get_ch_name("altvoltage", 0), true); return *chn != NULL;
	case TX: *chn = iio_device_find_channel(get_ad9361_phy(ctx), get_ch_name("altvoltage", 1), true); return *chn != NULL;
	default: ASSERT(0); return false;
	}
}

/* applies streaming configuration through IIO */
bool cfg_ad9361_streaming_ch(struct iio_context *ctx, struct stream_cfg *cfg, enum iodev type, int chid)
{
	struct iio_channel *chn = NULL;

	// Configure phy and lo channels
	printf("* Acquiring AD9361 phy channel %d\n", chid);
	if (!get_phy_chan(ctx, type, chid, &chn)) {	return false; }
	wr_ch_str(chn, "rf_port_select",     cfg->rfport);
	wr_ch_lli(chn, "rf_bandwidth",       cfg->bw_hz);
	//printf("%lld\n",cfg->fs_hz);
	wr_ch_lli(chn, "sampling_frequency", cfg->fs_hz);

	// Configure LO channel
	printf("* Acquiring AD9361 %s lo channel\n", type == TX ? "TX" : "RX");
	if (!get_lo_chan(ctx, type, &chn)) { return false; }
	wr_ch_lli(chn, "frequency", cfg->lo_hz);
	return true;
}

// https://stackoverflow.com/questions/664014/what-integer-hash-function-are-good-that-accepts-an-integer-hash-key?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
static uint32_t hashf(uint32_t x) {
	x = ((x >> 16) ^ x) * 0x45d9f3b;
	x = ((x >> 16) ^ x) * 0x45d9f3b;
	x = (x >> 16) ^ x;
	return x;
}

/* simple configuration and streaming */
int main (int argc, char **argv)
{
	if (argc < 5) {
		printf("Usage: ./main uri fr1 fr2 txrx\n");
		exit(1);
	}
	char* uri = argv[1];
	int fr1 = atoi(argv[2]);
	int fr2 = atoi(argv[3]);
	int txrx = atoi(argv[4]);
	//printf("Hi there\n");
	// Streaming devices
	struct iio_device *tx;
	struct iio_device *rx;

	// RX and TX sample counters
	size_t nrx = 0;
	size_t ntx = 0;

	// Stream configurations
	struct stream_cfg rxcfg;
	struct stream_cfg txcfg;

	// Listen to ctrl+c and ASSERT
	signal(SIGINT, handle_sig);

	// RX stream config
	rxcfg.bw_hz = MHZ(2);   // 2 MHz rf bandwidth
	rxcfg.fs_hz = MHZ(2.5);   // 2.5 MS/s rx sample rate
	rxcfg.lo_hz = MHZ(fr1); // 2.5 GHz rf frequency
	rxcfg.rfport = "A_BALANCED"; // port A (select for rf freq.)

	// TX stream config
	txcfg.bw_hz = MHZ(2); // 1.5 MHz rf bandwidth
	txcfg.fs_hz = MHZ(2.5);   // 2.5 MS/s tx sample rate
	txcfg.lo_hz = MHZ(fr2); // 2.5 GHz rf frequency
	txcfg.rfport = "A"; // port A (select for rf freq.)

	printf("* Acquiring IIO context\n");
	ASSERT((ctx = iio_create_context_from_uri(uri)) && "No context");
	printf("count: %d\n", iio_context_get_devices_count(ctx));
	ASSERT(iio_context_get_devices_count(ctx) > 0 && "No devices");
	

	printf("* Acquiring AD9361 streaming devices\n");
	ASSERT(get_ad9361_stream_dev(ctx, TX, &tx) && "No tx dev found");
	ASSERT(get_ad9361_stream_dev(ctx, RX, &rx) && "No rx dev found");

	printf("* Configuring AD9361 for streaming\n");
	ASSERT(cfg_ad9361_streaming_ch(ctx, &rxcfg, RX, 0) && "RX port 0 not found");
	ASSERT(cfg_ad9361_streaming_ch(ctx, &txcfg, TX, 0) && "TX port 0 not found");

	printf("* Initializing AD9361 IIO streaming channels\n");
	ASSERT(get_ad9361_stream_ch(ctx, RX, rx, 0, &rx0_i) && "RX chan i not found");
	ASSERT(get_ad9361_stream_ch(ctx, RX, rx, 1, &rx0_q) && "RX chan q not found");
	ASSERT(get_ad9361_stream_ch(ctx, TX, tx, 0, &tx0_i) && "TX chan i not found");
	ASSERT(get_ad9361_stream_ch(ctx, TX, tx, 1, &tx0_q) && "TX chan q not found");

	printf("* Enabling IIO streaming channels\n");
	iio_channel_enable(rx0_i);
	iio_channel_enable(rx0_q);
	iio_channel_enable(tx0_i);
	iio_channel_enable(tx0_q);

	printf("* Creating non-cyclic IIO buffers with 1 MiS\n");
	rxbuf = iio_device_create_buffer(rx, 256, false);
	if (!rxbuf) {
		perror("Could not create RX buffer");
		shutdown();
	}
	//txbuf = iio_device_create_buffer(tx, 1024*1024, false);
	txbuf = iio_device_create_buffer(tx, 256, false);
	// 64 -> 700 microseconds
	// 256 -> 1000 microseconds
	if (!txbuf) {
		perror("Could not create TX buffer");
		shutdown();
	}

	printf("* Starting IO streaming (press CTRL+C to cancel)\n");

	float history[1024];
	for (size_t i = 0; i < 1024; i++) {
	    history[i] = 0;
	}
	//printf("hist:%d\n",sizeof(history));
	float average = 0;
	uint32_t index = 0;

	uint64_t prev = 0;
	uint64_t content = 0;

	while (!stop)
	{
		ssize_t nbytes_rx, nbytes_tx;
		char *p_dat, *p_end;
		ptrdiff_t p_inc;

		if (txrx == 1 || txrx == 3) {
		// Refill RX buffer
		nbytes_rx = iio_buffer_refill(rxbuf);
		if (nbytes_rx < 0) { printf("Error refilling buf %d\n",(int) nbytes_rx); shutdown(); }
		// READ: Get pointers to RX buf and read IQ from RX buf port 0
		p_inc = iio_buffer_step(rxbuf);
		p_end = iio_buffer_end(rxbuf);
		for (p_dat = (char *)iio_buffer_first(rxbuf, rx0_i); p_dat < p_end; p_dat += 64 * p_inc) {
			// Example: swap I and Q
			prev = content;
			content = 0;
			for (int j = 0; j < 64; j++) {
				const int16_t i = ((int16_t*)p_dat)[2*j+0]; // Real (I)
				const int16_t q = ((int16_t*)p_dat)[2*j+1]; // Imag (Q)
				//printf("I:%c%04X\n",(i<0)?'-':' ',(i<0)?-i:i);
				//printf("Q:%c%04X\n",(q<0)?'-':' ',(q<0)?-q:q);
				float mag = i*i+q*q;
				//printf("mag:%f\n", mag);
				//printf("avg:%f\n",average);
				int k = 63-j;
				if (mag > (average)) {
					//printf("%f : ON\n", mag);
					content += (1L << k);
				} else {
					//printf("%f : OFF\n", mag);
				}
				average = (1024*average-history[index]+mag)/1024;
				history[index] = mag;
				index++;
				if (index % 1024 == 0) {
					index = 0;
				}
			}
			uint64_t select_first_32 = ((1L << 32) - 1) << 32;
	        uint64_t select_last_32  = ((1L << 32) - 1);
	        //printf("%0x", (content & select_first_32) >> 32);
	        //printf("recv:%016lx\n", content);
	        //int flag = 0;
	        for (int i = 0; i < 64; i+=1) {
	          uint64_t select_all_but_first_i = (1L << (64-i)) - 1;
	          uint64_t select_first_i = ((1L << i) - 1) << (64-i);
	          uint64_t newlong = ((prev & select_all_but_first_i) << i) | ((content & select_first_i) >> (64-i));
	          uint32_t hsh = (newlong & select_first_32) >> 32;
	          uint32_t msg = (newlong & select_last_32 );

	          if ((hashf(msg)) == hsh && hsh != 0) {
	            // by god, we've done it!
	            struct timeval tp;
				gettimeofday(&tp, NULL);
				uint32_t ms = tp.tv_sec * 1000000 + tp.tv_usec;
	            printf("Received: %u\n Difference: %d microseconds. offset: %d\n", msg, ms-msg, i);
	            //flag = 1;
	            break;
	          }
	        }
	        /*if (!flag){
	        	printf("Miss\n");
	        }*/
		}
		}
		if (txrx == 2 || txrx == 3) {
		// Schedule TX buffer
		nbytes_tx = iio_buffer_push(txbuf);
		if (nbytes_tx < 0) { printf("Error pushing buf %d\n", (int) nbytes_tx); shutdown(); }

		// WRITE: Get pointers to TX buf and write IQ to TX buf port 0
		//printf("What\n");
		p_inc = iio_buffer_step(txbuf);
		p_end = iio_buffer_end(txbuf);

		for (p_dat = (char *)iio_buffer_first(txbuf, tx0_i); p_dat < p_end; p_dat += 64 * p_inc) {
			//printf("Diff: %d\n", p_end-p_dat);
			struct timeval tp;
			gettimeofday(&tp, NULL);
			uint32_t msg = tp.tv_sec * 1000000 + tp.tv_usec;
			//msg = 0x11111111;
			uint32_t hsh = hashf(msg);
			printf("Sent: %u\n", msg);
			//hsh = msg;
			//printf("send:%08x %08x\n", hsh,msg);
			for (int i = 0; i < 32; i++) {
				int k = 31-i;
				int16_t x = 21845;
				if ((hsh & (1 << k)) == 0) {
					x = 0;
					//printf("OFF\n");
				} else {
					//printf("ON\n");
				}
				((int16_t*)p_dat)[2*i+0] = x << 4; // Real (I)
				((int16_t*)p_dat)[2*i+1] = x << 4; // Imag (Q)
			}
			for (int i = 0; i < 32; i++) {
				int k = 31-i;
				int16_t x = 21845;
				if ((msg & (1 << k)) == 0) {
					x = 0;
					//printf("OFF\n");
				} else {
					//printf("ON\n");
				}
				((int16_t*)p_dat)[64+2*i+0] = x << 4; // Real (I)
				((int16_t*)p_dat)[64+2*i+1] = x << 4; // Imag (Q)
			}
		}
		}

		// Sample counter increment and status output
		nrx += nbytes_rx / iio_device_get_sample_size(rx);
		ntx += nbytes_tx / iio_device_get_sample_size(tx);
		//printf("\tRX %8.2f MSmp, TX %8.2f MSmp\n", nrx/1e6, ntx/1e6);
	}

	shutdown();

	return 0;
} 
