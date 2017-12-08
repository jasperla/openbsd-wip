# $OpenBSD$

V =		16.04
COMMENT =	easy DBus menu creation library
DISTNAME =	libdbusmenu-${V}.0
CATEGORIES =	devel

HOMPAGE =	https://launchpad.net/libdbusmenu
MAINTAINER =	Brian Callahan <bcallah@devio.us>

SHARED_LIBS +=	dbusmenu-glib             0.0 # 4.12
SHARED_LIBS +=	dbusmenu-gtk              0.0 # 4.12
SHARED_LIBS +=	dbusmenu-jsonloader       0.0 # 4.12

# Dual LGPLv2.1 and LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =	https://launchpad.net/libdbusmenu/${V}/${V}.0/+download/

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/json-glib \
		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk=2

USE_GMAKE =	Yes

PORTHOME =	${WRKSRC}

.include <bsd.port.mk>
