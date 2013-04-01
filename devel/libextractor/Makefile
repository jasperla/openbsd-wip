# $OpenBSD$

COMMENT =		extract metadata from arbitrary file types

DISTNAME =		libextractor-1.0.0

SHARED_LIBS +=		extractor		0.0 # 3.2
SHARED_LIBS +=		extractor_common	0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.gnu.org/s/libextractor/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm archive
WANTLIB += atk-1.0 atk-bridge-2.0 atspi avcodec avformat avutil
WANTLIB += bz2 c cairo cairo-gobject dbus-1 drm exiv2 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gif gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gsm gthread-2.0 gtk-3
WANTLIB += harfbuzz icudata icule icuuc jpeg ltdl lzma m magic
WANTLIB += mp3lame mpeg2 ogg orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += schroedinger-1.0 speex stdc++ swscale theoradec theoraenc
WANTLIB += tiff vorbis vorbisenc vorbisfile vpx x264 xcb xcb-render
WANTLIB += xcb-shm xvidcore z

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
			graphics/libungif \
			devel/libmagic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-glib \
			--disable-gsf \
			--disable-gnome
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
				  -I${LOCALBASE}/include/poppler" \
			LIBS="-lfontconfig -lfreetype -pthread -lm -logg"

NO_TEST =		Yes

.include <bsd.port.mk>
