# $OpenBSD$

V =		12.10
COMMENT =	convenience functions for desktop indicators
DISTNAME =	libindicator-${V}.1
CATEGORIES =	devel

SHARED_LIBS +=	indicator                 0.0 # 7.0

HOMPAGE =	https://launchpad.net/libindicator
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES =	https://launchpad.net/libindicator/${V}/${V}.1/+download/

LIB_DEPENDS =	x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk=2

USE_GMAKE =	Yes

.include <bsd.port.mk>
