COMMENT =	internet radio browser and player
GH_TAGNAME =	v2.1.0
GH_ACCOUNT =	tuner-labs
GH_PROJECT =	tuner

CATEGORIES =	audio www

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c execinfo gdk-3 gdk_pixbuf-2.0 gee-0.8
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstplayer-1.0 gstreamer-1.0
WANTLIB += gtk-3 intl json-glib-1.0 pango-1.0
WANTLIB += soup-3.0

LIB_DEPENDS =	devel/json-glib \
		devel/libgee \
		devel/libsoup3 \
		multimedia/gstreamer1/plugins-bad \
		x11/gtk+3

MODULES =	devel/dconf \
		devel/meson \
		textproc/intltool

BUILD_DEPENDS =	lang/vala

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
