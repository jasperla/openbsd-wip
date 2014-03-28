# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		original multiplayer wargame

V =			0.4
DISTNAME =		liquidwar6-${V}.3681
PKGNAME =		liquidwar6-${V}

CATEGORIES =		games

HOMEPAGE =		https://www.gnu.org/software/liquidwar6/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL GLU SDL SDL_image SDL_mixer SDL_ttf X11 X11-xcb
WANTLIB += Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo crypto
WANTLIB += cunit curl drm execinfo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 guile
WANTLIB += harfbuzz iconv idn intl jpeg ltdl m mikmod ncurses
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs readline smpeg sndio sqlite3
WANTLIB += ssl stdc++ tiff usbhid vorbis vorbisfile webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_GNU:=liquidwar6/}

MODULES =		converters/libiconv
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/cunit \
			devel/gmp \
			devel/libexecinfo \
			devel/libidn \
			devel/libtool,-ltdl \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			lang/guile \
			net/curl \
			x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-cunit \
			--enable-allinone \
			--enable-optimize
CONFIGURE_ENV =		LDFLAGS=-L${LOCALBASE}/lib \
			LIBS=-lexecinfo

.include <bsd.port.mk>
