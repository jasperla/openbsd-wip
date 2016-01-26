# $OpenBSD:

COMMENT =	vi(m) like file manager

DISTNAME =	vifm-0.8.1

CATEGORIES =	sysutils

HOMEPAGE =	https://vifm.info/

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl ncursesw pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

MASTER_SITES =	http://prdownloads.sourceforge.net/vifm/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext

LIB_DEPENDS =	devel/pango \
		devel/glib2 \
		devel/atk \
		x11/gtk+2 \
		graphics/gdk-pixbuf2

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
