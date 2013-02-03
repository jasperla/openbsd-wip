# $OpenBSD$

SHARED_ONLY =		Yes
COMMENT-main =		multimedia transformations framework
COMMENT-gpl2 =		GPLv2-licensed modules for mlt
VERSION =		0.8.6
DISTNAME =		mlt-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gpl2 =		mlt-gpl2-${VERSION}

# XXX versions should be kept in sync together
SHARED_LIBS =		mlt		0.0
SHARED_LIBS +=		mlt++		0.0

CATEGORIES =		multimedia devel
HOMEPAGE =		http://www.mltframework.org/

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+, LGPLv2.1+
# Actually, qimage module could be under GPLv3+ if one more object
# file gets included, see --enable-gpl3 configure option.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main =	GL SDL SDL_image X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-main +=	Xinerama Xrandr Xrender atk-1.0 avcodec avdevice avformat
WANTLIB-main +=	avutil c cairo dv exif expat fontconfig freetype gdk-x11-2.0
WANTLIB-main +=	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB-main +=	iconv intl jack m ogg oil-0.3 pango-1.0 pangocairo-1.0
WANTLIB-main +=	pangoft2-1.0 pixman-1 png pthread pthread-stubs sox stdc++
WANTLIB-main +=	swfdec-0.8 swscale vorbis vorbisfile xcb xcb-render
WANTLIB-main +=	xcb-shm xml2 z

WANTLIB-gpl2 =	${MODQT4_WANTLIB} lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-gpl2 +=	dv exif m mlt pthread quicktime samplerate stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mlt/}
EXTRACT_SUFX =		.tar.gz

MULTI_PACKAGES =	-gpl2 -main

MODULES =		x11/qt4

RUN_DEPENDS-main =	x11/gtk+2,-guic

LIB_DEPENDS-main =	audio/jack \
			audio/libvorbis>=1.0.1 \
			audio/sox \
			devel/sdl>=1.2 \
			devel/sdl-image>=1.2 \
			graphics/ffmpeg \
			graphics/libexif \
			graphics/swfdec \
			multimedia/libdv>=0.102 \
			x11/gtk+2,-main

BUILD_DEPENDS-gpl2 =	textproc/libxml>=2.5 \
			x11/kde4/libs

LIB_DEPENDS-gpl2 =	${BASE_PKGPATH},-main \
			${MODQT4_LIB_DEPENDS} \
			audio/libsamplerate>=0.1.5 \
			graphics/libexif \
			multimedia/libquicktime

MAKE_FLAGS =		soversion=${LIBmlt_VERSION}
MAKE_ENV =		LDFLAGS="${LDFLAGS}" SHFLAGS="-shared"

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--disable-frei0r \
			--enable-gpl

NO_REGRESS =		Yes
LDFLAGS =		-L${X11BASE}/lib

.include <bsd.port.mk>
