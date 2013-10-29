# $OpenBSD: Makefile,v 1.21 2013/02/06 14:23:06 ajacoutot Exp $

COMMENT =	OpenGL window and compositing manager

V =		0.8.8
DISTNAME =	compiz-${V}

SHARED_LIBS =	decoration	1.0

MASTER_SITES =	http://releases.compiz.org/${V}/

WANTLIB =	GL GLU ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 \
		c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 harfbuzz \
		icudata icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread pthread-stubs \
		startup-notification-1 stdc++ wnck-1 xcb xcb-aux xcb-render \
		xcb-shm xml2 xslt z

MODULES =	devel/gconf2 \
		devel/gettext \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR =	compiz

LIB_DEPENDS =	devel/startup-notification \
		devel/libwnck \
		textproc/libxml \
		textproc/libxslt \
		x11/gtk+2

USE_GMAKE =	Yes

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE	= gnu
CONFIGURE_ARGS = --disable-static \
		 --disable-inotify \
		 --disable-fuse \
		 --disable-librsvg \
		 --disable-metacity \
		 --disable-gnome \
		 --disable-gnome-keybindings \
		 --disable-kde \
		 --disable-kde4 \
		 --disable-kconfig
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@rm -f ${PREFIX}/lib/compiz/*.la

.include <bsd.port.mk>
