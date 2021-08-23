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
		${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -I${WRKDIST}/dynasm \
		-c ${WRKDIST}/${l} -o ${WRKBUILD}/${l:.c=.o}
.endfor
	cd ${WRKBUILD} && ${CC} -shared -o ffi.so -L${PREFIX}/lib ${COMPILE_LEAFS:.c=.o}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/ffi.so ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/include/lua/${MODLUA_VERSION}
	${INSTALL_DATA} ${WRKDIST}/ffi.h ${PREFIX}/include/lua/${MODLUA_VERSION}

.include <bsd.port.mk>
