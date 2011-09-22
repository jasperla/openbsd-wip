# $OpenBSD: Makefile,v 1.8 2011/04/07 13:10:58 ajacoutot Exp $

COMMENT=		clutter GStreamer integration library

DISTNAME=		clutter-gst-1.3.14
SHARED_LIBS +=  clutter-gst-1.0    0.0      # 308.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gst/1.3/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xcomposite Xdamage Xext Xfixes Xi
WANTLIB += Xrender atk-1.0 cairo cairo-gobject clutter-glx-1.0
WANTLIB += drm expat fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z
WANTLIB += cogl cogl-pango ffi gsttag-0.10

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=		gnu

LIB_DEPENDS=		graphics/clutter/core \
			multimedia/gstreamer-0.10/plugins-base

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection

.include <bsd.port.mk>
