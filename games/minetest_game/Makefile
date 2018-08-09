# $OpenBSD$

COMMENT =		infinite-world block sandbox game

GH_ACCOUNT =		minetest
GH_PROJECT =		minetest_game
GH_TAGNAME =		0.4.17

CATEGORIES =		games

HOMEPAGE =		http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		games/minetest,-server

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/minetest
	${INSTALL_DATA_DIR} ${PREFIX}/share/minetest/games
	mv ${WRKDIR}/minetest_game-${GH_TAGNAME}/ \
	${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

.include <bsd.port.mk>
