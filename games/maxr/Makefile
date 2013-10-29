# $OpenBSD$

COMMENT =		Mechanized Assault & eXploration Reloaded

DISTNAME =		maxr-0.2.8

CATEGORIES =		games x11

HOMEPAGE =		http://www.maxr.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2, GNU FDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC SDL SDL_mixer SDL_net c m mikmod ogg pthread
WANTLIB += smpeg sndio stdc++ usbhid vorbis vorbisfile

MASTER_SITES =		http://www.maxr.org/downloads/

MODULES = 		converters/libiconv
LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-net

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	@perl -pi -e 's|cp -a|cp -RpP|' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
