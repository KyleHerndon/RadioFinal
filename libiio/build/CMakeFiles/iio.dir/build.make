# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kh/libiio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kh/libiio/build

# Include any dependencies generated for this target.
include CMakeFiles/iio.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/iio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/iio.dir/flags.make

CMakeFiles/iio.dir/backend.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/backend.c.o: ../backend.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/iio.dir/backend.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/backend.c.o   -c /home/kh/libiio/backend.c

CMakeFiles/iio.dir/backend.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/backend.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/backend.c > CMakeFiles/iio.dir/backend.c.i

CMakeFiles/iio.dir/backend.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/backend.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/backend.c -o CMakeFiles/iio.dir/backend.c.s

CMakeFiles/iio.dir/backend.c.o.requires:

.PHONY : CMakeFiles/iio.dir/backend.c.o.requires

CMakeFiles/iio.dir/backend.c.o.provides: CMakeFiles/iio.dir/backend.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/backend.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/backend.c.o.provides

CMakeFiles/iio.dir/backend.c.o.provides.build: CMakeFiles/iio.dir/backend.c.o


CMakeFiles/iio.dir/channel.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/channel.c.o: ../channel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/iio.dir/channel.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/channel.c.o   -c /home/kh/libiio/channel.c

CMakeFiles/iio.dir/channel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/channel.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/channel.c > CMakeFiles/iio.dir/channel.c.i

CMakeFiles/iio.dir/channel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/channel.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/channel.c -o CMakeFiles/iio.dir/channel.c.s

CMakeFiles/iio.dir/channel.c.o.requires:

.PHONY : CMakeFiles/iio.dir/channel.c.o.requires

CMakeFiles/iio.dir/channel.c.o.provides: CMakeFiles/iio.dir/channel.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/channel.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/channel.c.o.provides

CMakeFiles/iio.dir/channel.c.o.provides.build: CMakeFiles/iio.dir/channel.c.o


CMakeFiles/iio.dir/device.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/device.c.o: ../device.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/iio.dir/device.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/device.c.o   -c /home/kh/libiio/device.c

CMakeFiles/iio.dir/device.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/device.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/device.c > CMakeFiles/iio.dir/device.c.i

CMakeFiles/iio.dir/device.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/device.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/device.c -o CMakeFiles/iio.dir/device.c.s

CMakeFiles/iio.dir/device.c.o.requires:

.PHONY : CMakeFiles/iio.dir/device.c.o.requires

CMakeFiles/iio.dir/device.c.o.provides: CMakeFiles/iio.dir/device.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/device.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/device.c.o.provides

CMakeFiles/iio.dir/device.c.o.provides.build: CMakeFiles/iio.dir/device.c.o


CMakeFiles/iio.dir/context.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/context.c.o: ../context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/iio.dir/context.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/context.c.o   -c /home/kh/libiio/context.c

CMakeFiles/iio.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/context.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/context.c > CMakeFiles/iio.dir/context.c.i

CMakeFiles/iio.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/context.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/context.c -o CMakeFiles/iio.dir/context.c.s

CMakeFiles/iio.dir/context.c.o.requires:

.PHONY : CMakeFiles/iio.dir/context.c.o.requires

CMakeFiles/iio.dir/context.c.o.provides: CMakeFiles/iio.dir/context.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/context.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/context.c.o.provides

CMakeFiles/iio.dir/context.c.o.provides.build: CMakeFiles/iio.dir/context.c.o


CMakeFiles/iio.dir/buffer.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/buffer.c.o: ../buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/iio.dir/buffer.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/buffer.c.o   -c /home/kh/libiio/buffer.c

CMakeFiles/iio.dir/buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/buffer.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/buffer.c > CMakeFiles/iio.dir/buffer.c.i

CMakeFiles/iio.dir/buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/buffer.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/buffer.c -o CMakeFiles/iio.dir/buffer.c.s

CMakeFiles/iio.dir/buffer.c.o.requires:

.PHONY : CMakeFiles/iio.dir/buffer.c.o.requires

CMakeFiles/iio.dir/buffer.c.o.provides: CMakeFiles/iio.dir/buffer.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/buffer.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/buffer.c.o.provides

CMakeFiles/iio.dir/buffer.c.o.provides.build: CMakeFiles/iio.dir/buffer.c.o


CMakeFiles/iio.dir/utilities.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/utilities.c.o: ../utilities.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/iio.dir/utilities.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/utilities.c.o   -c /home/kh/libiio/utilities.c

CMakeFiles/iio.dir/utilities.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/utilities.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/utilities.c > CMakeFiles/iio.dir/utilities.c.i

CMakeFiles/iio.dir/utilities.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/utilities.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/utilities.c -o CMakeFiles/iio.dir/utilities.c.s

CMakeFiles/iio.dir/utilities.c.o.requires:

.PHONY : CMakeFiles/iio.dir/utilities.c.o.requires

CMakeFiles/iio.dir/utilities.c.o.provides: CMakeFiles/iio.dir/utilities.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/utilities.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/utilities.c.o.provides

CMakeFiles/iio.dir/utilities.c.o.provides.build: CMakeFiles/iio.dir/utilities.c.o


CMakeFiles/iio.dir/scan.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/scan.c.o: ../scan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/iio.dir/scan.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/scan.c.o   -c /home/kh/libiio/scan.c

CMakeFiles/iio.dir/scan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/scan.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/scan.c > CMakeFiles/iio.dir/scan.c.i

CMakeFiles/iio.dir/scan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/scan.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/scan.c -o CMakeFiles/iio.dir/scan.c.s

CMakeFiles/iio.dir/scan.c.o.requires:

.PHONY : CMakeFiles/iio.dir/scan.c.o.requires

CMakeFiles/iio.dir/scan.c.o.provides: CMakeFiles/iio.dir/scan.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/scan.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/scan.c.o.provides

CMakeFiles/iio.dir/scan.c.o.provides.build: CMakeFiles/iio.dir/scan.c.o


CMakeFiles/iio.dir/local.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/local.c.o: ../local.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/iio.dir/local.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/local.c.o   -c /home/kh/libiio/local.c

CMakeFiles/iio.dir/local.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/local.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/local.c > CMakeFiles/iio.dir/local.c.i

CMakeFiles/iio.dir/local.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/local.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/local.c -o CMakeFiles/iio.dir/local.c.s

CMakeFiles/iio.dir/local.c.o.requires:

.PHONY : CMakeFiles/iio.dir/local.c.o.requires

CMakeFiles/iio.dir/local.c.o.provides: CMakeFiles/iio.dir/local.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/local.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/local.c.o.provides

CMakeFiles/iio.dir/local.c.o.provides.build: CMakeFiles/iio.dir/local.c.o


CMakeFiles/iio.dir/usb.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/usb.c.o: ../usb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/iio.dir/usb.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/usb.c.o   -c /home/kh/libiio/usb.c

CMakeFiles/iio.dir/usb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/usb.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/usb.c > CMakeFiles/iio.dir/usb.c.i

CMakeFiles/iio.dir/usb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/usb.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/usb.c -o CMakeFiles/iio.dir/usb.c.s

CMakeFiles/iio.dir/usb.c.o.requires:

.PHONY : CMakeFiles/iio.dir/usb.c.o.requires

CMakeFiles/iio.dir/usb.c.o.provides: CMakeFiles/iio.dir/usb.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/usb.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/usb.c.o.provides

CMakeFiles/iio.dir/usb.c.o.provides.build: CMakeFiles/iio.dir/usb.c.o


CMakeFiles/iio.dir/network.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/network.c.o: ../network.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/iio.dir/network.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/network.c.o   -c /home/kh/libiio/network.c

CMakeFiles/iio.dir/network.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/network.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/network.c > CMakeFiles/iio.dir/network.c.i

CMakeFiles/iio.dir/network.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/network.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/network.c -o CMakeFiles/iio.dir/network.c.s

CMakeFiles/iio.dir/network.c.o.requires:

.PHONY : CMakeFiles/iio.dir/network.c.o.requires

CMakeFiles/iio.dir/network.c.o.provides: CMakeFiles/iio.dir/network.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/network.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/network.c.o.provides

CMakeFiles/iio.dir/network.c.o.provides.build: CMakeFiles/iio.dir/network.c.o


CMakeFiles/iio.dir/xml.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/xml.c.o: ../xml.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/iio.dir/xml.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/xml.c.o   -c /home/kh/libiio/xml.c

CMakeFiles/iio.dir/xml.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/xml.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/xml.c > CMakeFiles/iio.dir/xml.c.i

CMakeFiles/iio.dir/xml.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/xml.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/xml.c -o CMakeFiles/iio.dir/xml.c.s

CMakeFiles/iio.dir/xml.c.o.requires:

.PHONY : CMakeFiles/iio.dir/xml.c.o.requires

CMakeFiles/iio.dir/xml.c.o.provides: CMakeFiles/iio.dir/xml.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/xml.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/xml.c.o.provides

CMakeFiles/iio.dir/xml.c.o.provides.build: CMakeFiles/iio.dir/xml.c.o


CMakeFiles/iio.dir/lock.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/lock.c.o: ../lock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/iio.dir/lock.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/lock.c.o   -c /home/kh/libiio/lock.c

CMakeFiles/iio.dir/lock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/lock.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/lock.c > CMakeFiles/iio.dir/lock.c.i

CMakeFiles/iio.dir/lock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/lock.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/lock.c -o CMakeFiles/iio.dir/lock.c.s

CMakeFiles/iio.dir/lock.c.o.requires:

.PHONY : CMakeFiles/iio.dir/lock.c.o.requires

CMakeFiles/iio.dir/lock.c.o.provides: CMakeFiles/iio.dir/lock.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/lock.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/lock.c.o.provides

CMakeFiles/iio.dir/lock.c.o.provides.build: CMakeFiles/iio.dir/lock.c.o


CMakeFiles/iio.dir/iiod-client.c.o: CMakeFiles/iio.dir/flags.make
CMakeFiles/iio.dir/iiod-client.c.o: ../iiod-client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/iio.dir/iiod-client.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iio.dir/iiod-client.c.o   -c /home/kh/libiio/iiod-client.c

CMakeFiles/iio.dir/iiod-client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iio.dir/iiod-client.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kh/libiio/iiod-client.c > CMakeFiles/iio.dir/iiod-client.c.i

CMakeFiles/iio.dir/iiod-client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iio.dir/iiod-client.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kh/libiio/iiod-client.c -o CMakeFiles/iio.dir/iiod-client.c.s

CMakeFiles/iio.dir/iiod-client.c.o.requires:

.PHONY : CMakeFiles/iio.dir/iiod-client.c.o.requires

CMakeFiles/iio.dir/iiod-client.c.o.provides: CMakeFiles/iio.dir/iiod-client.c.o.requires
	$(MAKE) -f CMakeFiles/iio.dir/build.make CMakeFiles/iio.dir/iiod-client.c.o.provides.build
.PHONY : CMakeFiles/iio.dir/iiod-client.c.o.provides

CMakeFiles/iio.dir/iiod-client.c.o.provides.build: CMakeFiles/iio.dir/iiod-client.c.o


# Object files for target iio
iio_OBJECTS = \
"CMakeFiles/iio.dir/backend.c.o" \
"CMakeFiles/iio.dir/channel.c.o" \
"CMakeFiles/iio.dir/device.c.o" \
"CMakeFiles/iio.dir/context.c.o" \
"CMakeFiles/iio.dir/buffer.c.o" \
"CMakeFiles/iio.dir/utilities.c.o" \
"CMakeFiles/iio.dir/scan.c.o" \
"CMakeFiles/iio.dir/local.c.o" \
"CMakeFiles/iio.dir/usb.c.o" \
"CMakeFiles/iio.dir/network.c.o" \
"CMakeFiles/iio.dir/xml.c.o" \
"CMakeFiles/iio.dir/lock.c.o" \
"CMakeFiles/iio.dir/iiod-client.c.o"

# External object files for target iio
iio_EXTERNAL_OBJECTS =

libiio.so.0.14: CMakeFiles/iio.dir/backend.c.o
libiio.so.0.14: CMakeFiles/iio.dir/channel.c.o
libiio.so.0.14: CMakeFiles/iio.dir/device.c.o
libiio.so.0.14: CMakeFiles/iio.dir/context.c.o
libiio.so.0.14: CMakeFiles/iio.dir/buffer.c.o
libiio.so.0.14: CMakeFiles/iio.dir/utilities.c.o
libiio.so.0.14: CMakeFiles/iio.dir/scan.c.o
libiio.so.0.14: CMakeFiles/iio.dir/local.c.o
libiio.so.0.14: CMakeFiles/iio.dir/usb.c.o
libiio.so.0.14: CMakeFiles/iio.dir/network.c.o
libiio.so.0.14: CMakeFiles/iio.dir/xml.c.o
libiio.so.0.14: CMakeFiles/iio.dir/lock.c.o
libiio.so.0.14: CMakeFiles/iio.dir/iiod-client.c.o
libiio.so.0.14: CMakeFiles/iio.dir/build.make
libiio.so.0.14: /usr/lib/x86_64-linux-gnu/librt.so
libiio.so.0.14: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
libiio.so.0.14: /usr/lib/x86_64-linux-gnu/libxml2.so
libiio.so.0.14: /usr/lib/x86_64-linux-gnu/libpthread.so
libiio.so.0.14: CMakeFiles/iio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kh/libiio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C shared library libiio.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iio.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libiio.so.0.14 libiio.so.0 libiio.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating API documentation with Doxygen"
	/usr/bin/doxygen /home/kh/libiio/build/Doxyfile

libiio.so.0: libiio.so.0.14
	@$(CMAKE_COMMAND) -E touch_nocreate libiio.so.0

libiio.so: libiio.so.0.14
	@$(CMAKE_COMMAND) -E touch_nocreate libiio.so

# Rule to build all files generated by this target.
CMakeFiles/iio.dir/build: libiio.so

.PHONY : CMakeFiles/iio.dir/build

CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/backend.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/channel.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/device.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/context.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/buffer.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/utilities.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/scan.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/local.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/usb.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/network.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/xml.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/lock.c.o.requires
CMakeFiles/iio.dir/requires: CMakeFiles/iio.dir/iiod-client.c.o.requires

.PHONY : CMakeFiles/iio.dir/requires

CMakeFiles/iio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/iio.dir/cmake_clean.cmake
.PHONY : CMakeFiles/iio.dir/clean

CMakeFiles/iio.dir/depend:
	cd /home/kh/libiio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kh/libiio /home/kh/libiio /home/kh/libiio/build /home/kh/libiio/build /home/kh/libiio/build/CMakeFiles/iio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/iio.dir/depend
