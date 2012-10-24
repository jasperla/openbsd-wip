# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		program to connect to Texas Instruments calculators

TILP_VERSION =		2-1.16
TILP_PROJECT =		tilp

CATEGORIES =		comms

MODULES =		converters/libiconv \
			textproc/intltool

LIB_DEPENDS =		comms/tilp/libticables \
			comms/tilp/libtifiles \
			comms/tilp/libticonv \
			comms/tilp/libticalcs \
			devel/libglade2 \
			devel/pango \
			devel/libusb1 \
			devel/pcre \
			devel/glib2 \
			x11/gtk+2

WANTLIB +=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB +=	Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB +=	drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB +=	gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB +=	gthread-2.0 gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB +=	pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB +=	stdc++ ticables2 ticalcs2 ticonv tifiles2 usb usb-1.0
WANTLIB +=	xcb xcb-render xcb-shm xml2 z

.include <bsd.port.mk>
