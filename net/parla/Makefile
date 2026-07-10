COMMENT =		native Delta Chat client

GH_ACCOUNT =		trufae
GH_PROJECT =		parla
GH_TAGNAME =		0.5.8

CATEGORIES =		net

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c adwaita-1 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-4 json-glib-1.0 pango-1.0

LIB_DEPENDS =		devel/json-glib \
			x11/gnome/libadwaita \
			x11/gtk+4

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils \
			gtk-update-icon-cache \
			vala

CONFIGURE_STYLE =	meson

BUILD_DEPENDS =		lang/vala
RUN_DEPENDS =		devel/xdg-utils \
			net/deltachat-rpc-server \
			x11/dbus

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
