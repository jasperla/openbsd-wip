# $OpenBSD$

COMMENT =		Mechanized Assault & eXploration Reloaded

DISTNAME =		maxr-0.2.8

CATEGORIES =		games x11

HOMEPAGE =		http://www.maxthegame.de/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2, GNU FDL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += FLAC SDL SDL_mixer SDL_net c iconv m mikmod ogg pthread
WANTLIB += smpeg sndio stdc++ usbhid vorbis vorbisfile

MASTER_SITES =		http://www.maxr.org/downloads/

LIB_DEPENDS =		audio/libmikmod \
			audio/libvorbis \
			devel/sdl-mixer \
			devel/sdl-net

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-pthread"

post-patch:
	@perl -pi -e 's|cp -a|cp -RpP|' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
