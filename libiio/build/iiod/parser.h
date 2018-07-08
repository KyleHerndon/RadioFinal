/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_HOME_KH_LIBIIO_BUILD_IIOD_PARSER_H_INCLUDED
# define YY_YY_HOME_KH_LIBIIO_BUILD_IIOD_PARSER_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 29 "/home/kh/libiio/iiod/parser.y" /* yacc.c:1909  */

#ifndef YY_TYPEDEF_YY_SCANNER_T
#define YY_TYPEDEF_YY_SCANNER_T
typedef void *yyscan_t;
#endif

#include "../iio-config.h"
#include "../debug.h"

#include <stdbool.h>
#include <sys/socket.h>

int yylex();
int yylex_init_extra(void *d, yyscan_t *scanner);
int yylex_destroy(yyscan_t yyscanner);

void * yyget_extra(yyscan_t scanner);
ssize_t yy_input(yyscan_t scanner, char *buf, size_t max_size);

#define ECHO do { \
		struct parser_pdata *pdata = yyget_extra(yyscanner); \
		write_all(pdata, yytext, yyleng); \
	} while (0)

#define YY_INPUT(buf,result,max_size) do { \
		ssize_t res = yy_input(yyscanner, buf, max_size); \
		result = res <= 0 ? YY_NULL : (size_t) res; \
	} while (0)

#line 74 "/home/kh/libiio/build/iiod/parser.h" /* yacc.c:1909  */

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    SPACE = 258,
    END = 259,
    VERSION = 260,
    EXIT = 261,
    HELP = 262,
    OPEN = 263,
    CLOSE = 264,
    PRINT = 265,
    READ = 266,
    READBUF = 267,
    WRITEBUF = 268,
    WRITE = 269,
    SETTRIG = 270,
    GETTRIG = 271,
    TIMEOUT = 272,
    DEBUG_ATTR = 273,
    BUFFER_ATTR = 274,
    IN_OUT = 275,
    CYCLIC = 276,
    SET = 277,
    BUFFERS_COUNT = 278,
    WORD = 279,
    DEVICE = 280,
    CHANNEL = 281,
    VALUE = 282
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 63 "/home/kh/libiio/iiod/parser.y" /* yacc.c:1909  */

	char *word;
	struct iio_device *dev;
	struct iio_channel *chn;
	long value;

#line 121 "/home/kh/libiio/build/iiod/parser.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif



int yyparse (yyscan_t scanner);

#endif /* !YY_YY_HOME_KH_LIBIIO_BUILD_IIOD_PARSER_H_INCLUDED  */
