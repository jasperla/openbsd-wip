# $OpenBSD$


COMMENT =		extract metadata from arbitrary file types

DISTNAME =		libextractor-1.1
REVISION =		0

SHARED_LIBS +=		extractor		0.0 # 3.2
SHARED_LIBS +=		extractor_common	0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.gnu.org/s/libextractor/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi avcodec avformat avutil bz2 c cairo cairo-gobject
WANTLIB += crypto dbus-1 exiv2 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gsf-1 gsm gthread-2.0 gtk-3 harfbuzz jpeg
WANTLIB += ltdl lzma m magic mp3lame mpeg2 ogg opus orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs schroedinger-1.0 speex ssl stdc++ swscale
WANTLIB += theoradec theoraenc tiff vorbis vorbisenc vorbisfile
WANTLIB += vpx x264 xcb xcb-render xcb-shm xml2 xvidcore z

MASTER_SITES =		${MASTER_SITE_GNU:=libextractor/}

MODULES =		devel/gettext
LIB_DEPENDS =		devel/libtool,-ltdl \
			graphics/libmpeg2 \
			archivers/bzip2 \
			graphics/ffmpeg \
			x11/gtk+3 \
			archivers/xz \
			graphics/exiv2 \
			audio/flac \
			archivers/libarchive \
			graphics/giflib \
			devel/libmagic \
			devel/libgsf

LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-glib \
			--disable-gnome \
			--with-gtk-version=3.0.0
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
				  -I${LOCALBASE}/include/poppler" \
			LIBS="-lfontconfig -lfreetype -pthread -lm -logg"

.include <bsd.port.mk>
