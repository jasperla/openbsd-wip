# $OpenBSD: Makefile,v 1.10 2011/04/07 11:22:04 jasper Exp $

COMMENT=		GTK+2 widget for clutter

DISTNAME=		clutter-gtk-${API_VERSION}.2
SHARED_LIBS +=  clutter-gtk-1.0      0.0      # .0.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gtk/${API_VERSION}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += clutter-glx-1.0 drm expat fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += cogl cogl-pango ffi kvm
WANTLIB += xcb-shm z

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=	gnu

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		graphics/clutter/core>=1.6.4 \
			x11/gtk+3

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection

.include <bsd.port.mk>
