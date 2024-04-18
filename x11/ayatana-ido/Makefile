COMMENT =	Ayatana Indicator Display Objects

V	= 	0.10.2
PKGNAME =	libayatana-ido-${V}

DIST_TUPLE = github AyatanaIndicators ayatana-ido ${V} .

CATEGORIES =	x11

HOMEPAGE =	https://github.com/AyatanaIndicators/ayatana-ido

MAINTAINER =	Laurence Tratt <https://tratt.net/laurie/>

# GPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

SHARED_LIBS +=	ayatana-ido3-0.4          0.0 # 0.0

LIB_DEPENDS =	devel/glib2 \
		devel/harfbuzz \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/gtk+3 \
		x11/gnome/at-spi2-core

WANTLIB = atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 harfbuzz intl m pango-1.0 pangocairo-1.0 pthread

CONFIGURE_ARGS = -DCMAKE_INSTALL_PREFIX=${LOCALBASE}
MODCMAKE_LDFLAGS = -L${LOCALBASE}/lib

NO_TEST =		Yes

.include <bsd.port.mk>
