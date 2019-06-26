# $OpenBSD$

COMMENT =	open source engine recreation for Diablo 1 game
DISTNAME =	devilutionx-0.4.0.1
CATEGORIES =	games x11

GH_ACCOUNT =	diasurgical
GH_PROJECT =	devilutionX
GH_COMMIT =	40a5365e1f8deb8e23c6604f3b920009bfef16b8

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Unlicense
PERMIT_PACKAGE =	Yes

# Links with -static-libgcc -static-libstdc++
# so `make port-lib-depends-check' reports
# Extra:  estdc++
WANTLIB += SDL2 SDL2_mixer SDL2_ttf c m pthread

# Does not build with clang. Reasons unknown.
# FreeBSD also uses gcc. Windows uses MSVC.
COMPILER =	ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	security/libsodium

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-ttf

CONFIGURE_ARGS =	-DBINARY_RELEASE=ON \
			-DDEBUG=OFF \
			-DASAN=OFF

NO_TEST =	Yes

# No install target
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/devilutionx ${PREFIX}/bin

.include <bsd.port.mk>
