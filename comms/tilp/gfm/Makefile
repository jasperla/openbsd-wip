# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		group file manager for TI handhelds

TILP_VERSION =		-1.07
TILP_PROJECT =		gfm
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		comms

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		archivers/libarchive \
			comms/tilp/libticonv \
			comms/tilp/libtifiles \
			comms/tilp/libticalcs \
			devel/libglade2 \
			devel/glib2 \
			x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender archive atk-1.0 bz2 c cairo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv icudata icule icuuc
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ ticables2
WANTLIB += ticalcs2 ticonv tifiles2 usb usb-1.0 xcb xcb-render
WANTLIB += xcb-shm xml2 z

.include <bsd.port.mk>
