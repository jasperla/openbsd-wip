# $OpenBSD$

COMMENT =	FFI library for calling C functions from lua

DISTNAME =	luaffi-20210301

GH_ACCOUNT = facebookarchive
GH_PROJECT = luaffifb
GH_COMMIT = a1cb731b08c91643b0665935eb5622b3d621211b

CATEGORIES =	devel

HOMEPAGE = https://github.com/facebookarchive/luaffifb

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# Mix of BSD/MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua
FLAVORS=        lua51 lua52 lua53
FLAVOR?=

do-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -c call.c -o call.o -Idynasm
	cd ${WRKDIST} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -c ctype.c -o ctype.o -Idynasm
	cd ${WRKDIST} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -c ffi.c -o ffi.o -Idynasm
	cd ${WRKDIST} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -c parser.c -o parser.o -Idynasm
	cd ${WRKDIST} && ${CC} -shared -o ffi.so -L${PREFIX}/lib call.o ctype.o ffi.o parser.o

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKDIST}/ffi.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/include/lua/${MODLUA_VERSION}
	${INSTALL_DATA} ${WRKDIST}/ffi.h ${PREFIX}/include/lua/${MODLUA_VERSION}

.include <bsd.port.mk>
