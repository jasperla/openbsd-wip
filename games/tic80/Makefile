# $OpenBSD$

V =		0.90.1678-dev
COMMENT =	open source fantasy video game console (TIC-80)
DISTNAME =	TIC-80-${V}
PKGNAME =	${DISTNAME:S/TIC-80/tic80/}
CATEGORIES =	games x11

HOMEPAGE =	https://tic80.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# TIC-80 itself: MIT
# Built-in dependencies:
#   argparse: MIT
#   blip-buf: LGPLv2.1 only
#   dirent: MIT
#   duktape: MIT
#   fennel: MIT
#   giflib: MIT
#   http-parser: MIT
#   libuv: MIT
#   lpeg: MIT
#   lua: MIT
#   moonscript: MIT
#   sdl-gpu: MIT
#   sokol: Zlib
#   squirrel: MIT
#   wren: MIT
#   zip: Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c curl m png z

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		graphics/png \
		net/curl

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DBUILD_PRO=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include/SDL2 -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			-DVERSION_HASH=74fd7f5

NO_TEST =	Yes

# Install all the other binaries.
post-install:
	${INSTALL_PROGRAM} \
		${WRKBUILD}/bin/{bin2txt,cart2prj,player-sdl,prj2cart,xplode} \
			${PREFIX}/bin

.include <bsd.port.mk>
