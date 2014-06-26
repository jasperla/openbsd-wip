# $OpenBSD$

COMMENT =		Grid-entry natural handwriting input panel
DISTNAME =		cellwriter-1.3.5

CATEGORIES =		x11

HOMEPAGE =		http://risujin.org/cellwriter/

MAINTAINER =		Vasily Mikhaylichenko <vaskas@lxmx.com.au>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xtst Xfixes Xext Xcomposite Xdamage Xinerama Xrandr
WANTLIB +=		Xi Xcursor Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB +=		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB +=		gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB +=		pthread z

MASTER_SITES =		http://risujin.org/pub/cellwriter/

LIB_DEPENDS =		x11/gtk+2
RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
