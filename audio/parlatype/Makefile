# $OpenBSD$

V =		1.5.6
COMMENT =	minimal audio player for manual speech transcription
DISTNAME =	parlatype-${V}
CATEGORIES =	audio x11

SHARED_LIBS +=	parlatype                 0.0 # 1.6

HOMEPAGE =	https://gkarsay.github.io/parlatype/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES =	https://github.com/gkarsay/parlatype/releases/download/v${V}/

BUILD_DEPENDS =	devel/gettext-tools \
		devel/gobject-introspection \
		textproc/intltool \
		x11/gnome/yelp-tools

LIB_DEPENDS =	multimedia/gstreamer1/plugins-base

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gsettings-desktop-schemas \
		multimedia/gstreamer1/plugins-good \
		x11/gnome/yelp \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libreoffice

USE_GMAKE =	Yes

.include <bsd.port.mk>
