# $OpenBSD$

V =		12.10
COMMENT =	library for exporting menus to a desktop environment
DISTNAME =	libappindicator-${V}.0
CATEGORIES =	devel

SHARED_LIBS +=	appindicator              0.0 # 1.0

HOMPAGE =	https://launchpad.net/libappindicator
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo dbusmenu-glib dbusmenu-gtk
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv indicator intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =	https://launchpad.net/libappindicator/${V}/${V}.0/+download/

MODULES =	lang/python

BUILD_DEPENDS =	x11/py-gtk2

LIB_DEPENDS =	devel/libdbusmenu \
		devel/libindicator \
		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk=2

USE_GMAKE =	Yes

PORTHOME =	${WRKSRC}

.include <bsd.port.mk>
