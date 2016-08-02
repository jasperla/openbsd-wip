# $OpenBSD: Makefile.template,v 1.64 2013/03/11 14:45:20 espie Exp $

COMMENT =		marble game inspired by Marble Madness

PKGNAME =		trackballs-1.1.4

CATEGORIES =		games

HOMEPAGE =		http://trackballs.sourceforge.net/

# source GPLv2+
# music GPLv2+ or Ethymos Free Music Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL SDL_image SDL_mixer SDL_ttf c gmp guile
WANTLIB += intl ltdl m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=trackballs/}
DISTFILES =		${PKGNAME}${EXTRACT_SUFX} \
			trackballs-music-1.4.tar.bz2

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/gmp \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			lang/guile

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include"
CONFIGURE_ARGS +=	--with-highscores=~

WRKDIST =		${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA} ${WRKDIR}/trackballs-music/*.ogg \
		${PREFIX}/share/trackballs/music/

.include <bsd.port.mk>
