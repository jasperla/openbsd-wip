COMMENT =	fallout 2 for modern operating systems

V =		1.3
PKGNAME =	fallout2-ce-${V}

DIST_TUPLE +=	github alexbatalov fallout2-ce v1.3.0 .

CATEGORIES =	x11 games

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# Sustainable Use License
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB +=		${COMPILER_LIBCXX} SDL2 c m z

MODULES =		devel/cmake

LIB_DEPENDS =		devel/sdl2

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fallout2-ce ${PREFIX}/bin

.include <bsd.port.mk>
