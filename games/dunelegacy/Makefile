# $OpenBSD$

COMMENT =		first-ever real-time strategy game

DISTNAME =		dunelegacy-0.96.3-src
PKGNAME =		${DISTNAME:S/-src//}

CATEGORIES =		games x11

HOMEPAGE =		http://dunelegacy.sourceforge.net/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2/CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_mixer c enet m pthread stdc++

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=dunelegacy/}
MASTER_SITES0 =		http://www.myway.de/richieland/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/sdl-mixer \
			net/enet
RUN_DEPENDS = 		devel/desktop-file-utils
TEST_DEPENDS = 		devel/cppunit

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -DXTHREADS"

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL \
			-I${X11BASE}/include"

WRKDIST =		${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dunelegacy/
.for f in COPYING README
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/dunelegacy/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dunelegacy.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/dunelegacy.png ${PREFIX}/share/pixmaps/dunelegacy.png

.include <bsd.port.mk>
