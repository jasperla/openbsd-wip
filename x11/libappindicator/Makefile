# $OpenBSD$

V =		12.10.0
COMMENT =	library for exporting menus to a desktop environment
DISTNAME =	libappindicator-${V}
CATEGORIES =	x11

SHARED_LIBS +=	appindicator3              0.0 # 1.0

HOMPAGE =	https://launchpad.net/libappindicator
MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo cairo-gobject
WANTLIB += dbusmenu-glib dbusmenu-gtk3 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-3 harfbuzz iconv
WANTLIB += indicator3 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES =  https://launchpad.net/libappindicator/${V:R}/${V}/+download/

LIB_DEPENDS =	x11/libdbusmenu \
		x11/libindicator \
		x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk=3

USE_GMAKE =	Yes

NO_TEST =	Yes

PORTHOME =	${WRKSRC}

.include <bsd.port.mk>
