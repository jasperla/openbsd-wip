COMMENT =		Yandex Music desktop client in GTK4/Adwaita
CATEGORIES =		audio x11
DIST_TUPLE =		gnome	Rirusha	Cassette	ver-0.2.0	.
WRKDIST =		${WRKDIR}/${DISTNAME:S/-/-ver-/}

HOMEPAGE =		https://gitlab.gnome.org/Rirusha/Cassette

# GPL 3.0+
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB +=		c cairo gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB +=		gobject-2.0 gstreamer-1.0 gtk-4 intl json-glib-1.0 m
WANTLIB +=		soup-3.0 sqlite3 webkitgtk-6.0 xml2

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gettext,-tools \
			lang/vala,-main \
			x11/blueprint-compiler

LIB_DEPENDS =		databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/json-glib \
			devel/libgee \
			devel/libsoup3 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			multimedia/gstreamer1/core \
			textproc/libxml \
			www/webkitgtk4,webkitgtk60

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

TEST_DEPENDS =		devel/appstream,-main

# clear the fog to look for real errors
CFLAGS +=		-Wno-unused-but-set-variable \
			-Wno-unused-function \
			-Wno-unused-variable

# for tests
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
