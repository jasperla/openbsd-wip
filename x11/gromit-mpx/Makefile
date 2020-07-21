# $OpenBSD$

COMMENT =	draw annotations on X11

GH_ACCOUNT =	bk138
GH_PROJECT =	gromit-mpx
GH_TAGNAME =	1.3

CATEGORIES =	x11

HOMEPAGE =	https://github.com/bk138/gromit-mpx

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xi appindicator3 atk-1.0 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	devel/libappindicator \
		x11/gtk+3

.include <bsd.port.mk>
