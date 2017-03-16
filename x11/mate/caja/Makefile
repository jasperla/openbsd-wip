# $OpenBSD$

COMMENT=		file manager for the MATE desktop

SHARED_LIBS +=  caja-extension            5.0 # 5.0

MATE_PROJECT=		caja

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender c dconf epoxy expat
WANTLIB += ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl lzma m pcre pixman-1
WANTLIB += pthread pthread-stubs xcb-render xcb-shm xcb
WANTLIB += xml2 z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo
WANTLIB += dbus-1 gailutil-3 gdk-3 gdk_pixbuf-2.0 graphite2
WANTLIB += gtk-3 harfbuzz mate-desktop-2 notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png exif
WANTLIB += X11-xcb startup-notification-1 xcb-util

MODULES=		devel/dconf \
			x11/mate

LIB_DEPENDS=		devel/libnotify \
			graphics/libexif \
			x11/mate/desktop

MODMATE_TOOLS=		shared-mime-info gobject-introspection

.include <bsd.port.mk>
