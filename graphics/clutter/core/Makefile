# $OpenBSD: Makefile,v 1.10 2011/04/07 11:38:42 jasper Exp $

COMMENT=		OpenGL-based interactive canvas library

DISTNAME=		clutter-${MAJOR}.16
SHARED_LIBS +=  clutter-glx-1.0      1.0      # 600.14

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xrender Xxf86vm atk-1.0 cairo cairo-gobject drm expat
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 json-glib-1.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-render xcb-shm z

BUILD_DEPENDS=          devel/gobject-introspection
LIB_DEPENDS+=		devel/atk \
			devel/json-glib \
			devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--with-imagebackend=gdk-pixbuf \
			--with-flavour=glx

CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
