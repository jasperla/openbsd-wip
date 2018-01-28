# $OpenBSD$

COMMENT =	open source port of Cannon Fodder
DISTNAME =	openfodder-1.3.1.1
CATEGORIES =	games x11

HOMEPAGE =	http://openfodder.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c m

# Upstream repo has copyrighted game assets in it
# so I'm hosting my own tarball with them removed.
MASTER_SITES =	https://devio.us/~bcallah/source/

# C++14
COMPILER =	base-clang ports-gcc ports-clang

LIB_DEPENDS =	devel/sdl2-mixer

# Strange upstream all routine.
MAKE_FLAGS =	CC="${CXX} ${CXXFLAGS} -c -std=c++14 -I./Source/ `sdl2-config --cflags`" \
		LD="${CXX} ${LDFLAGS} obj/*.o `sdl2-config --libs` -lSDL2_mixer"

NO_TEST =	Yes

# No upstream install routine.
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/OpenFodder
	${INSTALL_PROGRAM} ${WRKSRC}/Run/OpenFodder ${PREFIX}/share/OpenFodder
	cd ${WRKSRC}/Run && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/OpenFodder/{}" \;
	cd ${WRKSRC}/Run && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/OpenFodder/{}" \;
	${INSTALL_PROGRAM} ${WRKSRC}/Run/OpenFodder ${PREFIX}/share/OpenFodder
	${SUBST_CMD} -c -m 755 ${FILESDIR}/OpenFodder ${PREFIX}/bin/OpenFodder

.include <bsd.port.mk>
