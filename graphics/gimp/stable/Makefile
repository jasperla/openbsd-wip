# $OpenBSD: Makefile,v 1.121 2018/06/29 22:16:16 espie Exp $

COMMENT =	GNU Image Manipulation Program

DISTNAME =	gimp-2.10.4

SHARED_LIBS +=  gimp-2.0                  0.0 # 1000.4
SHARED_LIBS +=  gimpbase-2.0              0.0 # 1000.4
SHARED_LIBS +=  gimpcolor-2.0             0.0 # 1000.4
SHARED_LIBS +=  gimpconfig-2.0            0.0 # 1000.4
SHARED_LIBS +=  gimpmath-2.0              0.0 # 1000.4
SHARED_LIBS +=  gimpmodule-2.0            0.0 # 1000.4
SHARED_LIBS +=  gimpthumb-2.0             0.0 # 1000.4
SHARED_LIBS +=  gimpui-2.0                0.0 # 1000.4
SHARED_LIBS +=  gimpwidgets-2.0           0.0 # 1000.4

CATEGORIES =	graphics
MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

DIR =		gimp/v2.10
MASTER_SITES =	https://download.gimp.org/pub/${DIR}/ \
		https://www.mirrorservice.org/sites/ftp.gimp.org/pub/${DIR}/ \
		http://mirrors.go-parts.com/gimp/${DIR}/

HOMEPAGE =	http://www.gimp.org/

EXTRACT_SUFX =	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

WANTLIB += ${COMPILER_LIBCXX} Half ICE Iex IexMath IlmImf IlmThread
WANTLIB += Imath SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xpm Xrandr Xrender Xt aa atk-1.0 avahi-client
WANTLIB += avahi-common babl-0.1 bz2 c cairo croco-0.6 cups cupsimage
WANTLIB += curses dbus-1 exiv2 expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4 gexiv2 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 graphite2
WANTLIB += gs gthread-2.0 gtk-x11-2.0 hogweed iconv idn2 ijs intl
WANTLIB += jbig2dec jpeg json-c json-glib-1.0 lcms lcms2 lzma
WANTLIB += m mng mypaint-1.3 nettle openjp2 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler
WANTLIB += poppler-glib rsvg-2 tasn1 tiff unistring webp webpdemux
WANTLIB += webpmux wmf-0.2 wmflite-0.2 xcb xcb-render xcb-shm
WANTLIB += xml2 z harfbuzz

MODULES=	textproc/intltool \
		lang/python

BUILD_DEPENDS +=	graphics/gegl \
			archivers/lzip/lzlib \
			graphics/jasper \
			x11/py-gtk2 \
			net/glib2-networking \
			devel/iso-codes \
			devel/desktop-file-utils \
			devel/appstream-glib \
			print/poppler-data \
			graphics/mypaint-brushes \
			devel/xdg-utils \
			graphics/rawtherapee \
			graphics/darktable

LIB_DEPENDS +=	graphics/gegl04>=0.4.4 \
		graphics/babl>=0.1.52 \
		devel/glib2>=2.54.2 \
		devel/pango>=1.29.4 \
		graphics/gdk-pixbuf2>=2.30.8 \
		x11/gtk+2>=2.24.10 \
		graphics/cairo>=1.12.2 \
		devel/harfbuzz>=0.9.19 \
		archivers/bzip2 \
		archivers/xz \
		graphics/libgexiv2 \
		graphics/png \
		graphics/jpeg \
		graphics/tiff \
		graphics/lcms2 \
		graphics/libmypaint \
		graphics/libmng \
		x11/gnome/librsvg \
		graphics/libwmf \
		graphics/aalib \
		print/ghostscript/gnu \
		graphics/openexr \
		print/poppler

BUILD_DEPENDS +=	graphics/gegl \
			archivers/lzip/lzlib \
			graphics/jasper \
			x11/py-gtk2 \
			net/glib2-networking \
			devel/iso-codes \
			devel/desktop-file-utils \
			devel/appstream-glib \
			print/poppler-data \
			graphics/mypaint-brushes \
			devel/xdg-utils \
			graphics/rawtherapee \
			graphics/darktable

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS +=	--without-webkit --without-alsa

.include <bsd.port.mk>
