# $OpenBSD$

COMMENT =		first-ever real-time strategy game

DISTNAME =		dunelegacy-0.96.1-src
PKGNAME =		${DISTNAME:S/-src//}

CATEGORIES =		games x11

HOMEPAGE =		http://dunelegacy.sourceforge.net/wiki/index.php/Richie's_Branch

#MAINTAINER =		???

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		SDL SDL_mixer c m pthread stdc++

MASTER_SITES =		http://www.myway.de/richieland/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/sdl-mixer

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -DXTHREADS"

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL \
			-I${X11BASE}/include"

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dunelegacy
.for f in COPYING README
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/dunelegacy/
.endfor

.include <bsd.port.mk>
