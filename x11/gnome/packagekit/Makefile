# $OpenBSD$

COMMENT=		PackageKit GNOME Client Tools

GNOME_PROJECT=		gnome-packagekit
GNOME_VERSION=		3.2.1

DIST_SUBDIR=		gnome

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packagekit.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 ltdl m notify ogg packagekit-glib2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sqlite3 stdc++ upower-glib vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm z

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libnotify \
			sysutils/upower \
			x11/gnome/menus
LIB_DEPENDS=		sysutils/packagekit
RUN_DEPENDS=		x11/gnome/settings-daemon

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+=	--disable-gudev
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
