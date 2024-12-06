COMMENT =	fallout for modern operating systems

V =		1.1
# Fixes UB in src/movie_lib.cc
COMMIT =	ad8a2754fa99ceaf40495185ad48191cf27559e2
PKGNAME =	fallout1-ce-${V}

DIST_TUPLE +=	github alexbatalov fallout1-ce ${COMMIT} .

CATEGORIES =	x11 games

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# Sustainable Use License
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB +=		${COMPILER_LIBCXX} SDL2 c m

MODULES =		devel/cmake

LIB_DEPENDS =		devel/sdl2

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fallout-ce ${PREFIX}/bin

.include <bsd.port.mk>
