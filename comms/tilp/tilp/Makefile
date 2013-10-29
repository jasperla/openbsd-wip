# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		program to connect to Texas Instruments calculators

TILP_VERSION =		2-1.17
TILP_PROJECT =		tilp

CATEGORIES =		comms

MODULES =		converters/libiconv \
			textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS =		archivers/libarchive \
			comms/tilp/libticables \
			comms/tilp/libtifiles \
			comms/tilp/libticonv \
			comms/tilp/libticalcs \
			devel/pango \
			devel/libusb1 \
			devel/pcre \
			devel/glib2 \
			x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender archive atk-1.0 bz2 c cairo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz icudata icule icuuc intl lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ ticables2 ticalcs2
WANTLIB += ticonv tifiles2 usb usb-1.0 xcb xcb-render xcb-shm
WANTLIB += z

.include <bsd.port.mk>
