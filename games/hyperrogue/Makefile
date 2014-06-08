# $OpenBSD$

COMMENT =	Rogue-like in a non-Euclidean world
DISTNAME =	hyperrogue-44
PKGNAME =	hyperrogue-4.4
EXTRACT_SUFX =	.zip
CATEGORIES =	games x11

HOMEPAGE =	http://www.roguetemple.com/z/hyper.php
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Game and graphics: GPLv2 only
# Music: CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL SDL_gfx SDL_mixer SDL_ttf c m pthread stdc++

MASTER_SITES =	http://www.roguetemple.com/z/

LIB_DEPENDS =	devel/sdl-gfx \
		devel/sdl-mixer \
		devel/sdl-ttf

USE_GMAKE =	Yes
MAKE_FLAGS =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
ALL_TARGET =	hyper

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,g\+\+,${CXX},g|s,-O3,,g" ${WRKSRC}/Makefile

do-install:
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m 555 \
		-c ${FILESDIR}/hyperrogue ${PREFIX}/bin/hyperrogue
	${INSTALL_DATA_DIR} ${PREFIX}/share/hyperrogue
	${INSTALL_PROGRAM} ${WRKSRC}/hyper ${PREFIX}/share/hyperrogue
	${INSTALL_DATA} ${WRKSRC}/*.{ogg,ttf} ${PREFIX}/share/hyperrogue
	${INSTALL_DATA} ${WRKSRC}/hyperrogue-music.txt ${PREFIX}/share/hyperrogue
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hyperrogue
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/hyperrogue

.include <bsd.port.mk>
