# $OpenBSD$

V =		1.0.2
COMMENT =	original Zork 1 game
DISTNAME =	zork-${V}
CATEGORIES =	games

GH_ACCOUNT =	devshane
GH_PROJECT =	zork
GH_TAGNAME =	v${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c termcap

ALL_TARGET =	dungeon
MAKE_ENV =	DATADIR="${PREFIX}/share/zork"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zork ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/dungeon.6 ${PREFIX}/man/man6/zork.6
	${INSTALL_DATA_DIR} ${PREFIX}/share/zork
	${INSTALL_DATA} ${WRKSRC}/dtextc.dat ${PREFIX}/share/zork

.include <bsd.port.mk>
