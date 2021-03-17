# $OpenBSD$

V =		1.7.5
COMMENT =	graphical Roguelike game
DISTNAME =	brogue-${V}-linux-amd64
PKGNAME =	brogue-${V}
EXTRACT_SUFX =	.tbz2
CATEGORIES =	games x11

HOMEPAGE =	https://sites.google.com/site/broguegame/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL c curses m pthread

MASTER_SITES =	https://sites.google.com/site/broguegame/

LIB_DEPENDS =	devel/sdl

RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes
MAKE_FLAGS =	FLAGS="${CFLAGS}"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

# The cp line fixes up some GNU make problems.
pre-configure:
	@cp ${WRKSRC}/src/libtcod-1.5.2/src/png/lodepng.* \
		${WRKSRC}/src/libtcod-1.5.2/src
	${SUBST_CMD} ${WRKSRC}/src/platform/tcod-platform.c

# No install routine!
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/brogue ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/brogue.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/brogue/fonts
	${INSTALL_DATA} ${WRKSRC}/bin/fonts/* \
		${PREFIX}/share/brogue/fonts
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/bin/brogue-icon.png \
		${PREFIX}/share/pixmaps/brogue.png

.include <bsd.port.mk>
