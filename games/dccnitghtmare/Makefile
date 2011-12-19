# $OpenBSD$

COMMENT =		3D single player RPG in a satirical post-apocalyptical world

DISTNAME =		dccnitghtmare-0.7

CATEGORIES =		games x11

HOMEPAGE =		http://dnt.dnteam.org/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dccnitghtmare/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB += GL GLU SDL SDL_image SDL_ttf c cal3d m ogg openal pthread
WANTLIB += stdc++ vorbis vorbisfile

MODULES =		devel/gettext
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/sdl-image \
			devel/sdl-ttf \
			graphics/cal3d

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -liconv -lintl"

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/dccnitghtmare

post-install:
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/dccnitghtmare/

.include <bsd.port.mk>
