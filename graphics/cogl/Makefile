# $OpenBSD$

COMMENT=		Clutter OpenGL abstraction library

MAJOR=			1.8
DISTNAME=		cogl-${MAJOR}.0
CATEGORIES=		graphics
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS+=		cogl-pango	0.0 # 0.0
SHARED_LIBS+=		cogl		5.0 # 5.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://www.clutter-project.org/

MASTER_SITES=		${HOMEPAGE}/sources/cogl/${MAJOR}/

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS+=		devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2

WANTLIB+=		GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB+=		Xxf86vm cairo drm expat fontconfig freetype m pcre pixman-1
WANTLIB+=		pthread-stubs stdc++ xcb xcb-render xcb-shm z ffi gio-2.0
WANTLIB+=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl png
WANTLIB+=		pango-1.0 pangocairo-1.0 pangoft2-1.0 gdk_pixbuf-2.0

USE_GMAKE=		Yes

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-silent-rules \
			--with-gl-libname=libGL.so

.include <bsd.port.mk>
