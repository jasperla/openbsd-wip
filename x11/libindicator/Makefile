# $OpenBSD$

V =		12.10.1
COMMENT =	convenience functions for desktop indicators
DISTNAME =	libindicator-${V}
CATEGORIES =	x11

SHARED_LIBS +=	indicator3                0.0 # 7.0

HOMPAGE =	https://launchpad.net/libindicator
MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES =  https://launchpad.net/libindicator/${V:R}/${V}/+download/

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk=3

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
