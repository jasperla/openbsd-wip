# $OpenBSD$

COMMENT =	FFI library for calling C functions from Lua

DISTNAME =	luaffi-20210301

GH_ACCOUNT =	facebookarchive
GH_PROJECT = 	luaffifb
GH_COMMIT = 	a1cb731b08c91643b0665935eb5622b3d621211b

CATEGORIES =	devel

HOMEPAGE = 	https://github.com/facebookarchive/luaffifb

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# Mix of BSD/MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/lua
FLAVORS =	lua51 lua52 lua53
FLAVOR? =

SEPARATE_BUILD =	yes

# luaffi comes with a luarocks build system: it's easiest for us to build the
# small number of C files ourselves.
COMPILE_LEAFS =	call.c ctype.c ffi.c parser.c
do-build:
.for l in ${COMPILE_LEAFS}
	cd ${WRKBUILD} && \
		${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -I${WRKSRC}/dynasm \
		-c ${WRKSRC}/${l} -o ${WRKBUILD}/${l:.c=.o}
.endfor
	cd ${WRKBUILD} && ${CC} -shared -o ffi.so ${COMPILE_LEAFS:.c=.o}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/ffi.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/include/lua/${MODLUA_VERSION}
	${INSTALL_DATA} ${WRKDIST}/ffi.h ${PREFIX}/include/lua/${MODLUA_VERSION}

do-test:
	cd ${WRKBUILD} && \
		${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -I${WRKSRC}/dynasm \
		-c ${WRKSRC}/test.c -o ${WRKBUILD}/test.o
	cd ${WRKBUILD} && ${CC} -shared -o test.so test.o
	cd ${WRKBUILD} && LD_LIBRARY_PATH=${PREFIX}/lib ${MODLUA_BIN} ${WRKSRC}/test.lua

.include <bsd.port.mk>
