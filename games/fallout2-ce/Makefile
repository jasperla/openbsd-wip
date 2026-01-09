COMMENT =	fallout 2 for modern operating systems

DIST_TUPLE +=	github alexbatalov fallout2-ce v1.3.0 .

CATEGORIES =	games x11

# Sustainable Use License, fpattern: MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB +=		${COMPILER_LIBCXX} SDL2 c m z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/fpattern
LIB_DEPENDS =		devel/sdl2

CONFIGURE_ARGS =       -Dfpattern_SOURCE_DIR=${PREFIX}/include/fpattern

post-extract:
	rm -fr ${WRKDIST}/third_party/fpattern

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fallout2-ce ${PREFIX}/bin

.include <bsd.port.mk>
