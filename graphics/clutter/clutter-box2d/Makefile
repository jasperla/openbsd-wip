# $OpenBSD: Makefile,v 1.8 2011/04/07 07:50:22 jasper Exp $

COMMENT=		clutter Box2D integration library

DISTNAME=		clutter-box2d-0.10.0
REVISION=		2
SHARED_LIBS +=  clutter-box2d-0.10    0.0      # .1000.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-box2d/0.10/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xrender Xxf86vm atk-1.0 cairo cairo-gobject clutter-glx-1.0
WANTLIB += drm expat fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xcb-render xcb-shm z

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		graphics/clutter/core

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection

.include <bsd.port.mk>
