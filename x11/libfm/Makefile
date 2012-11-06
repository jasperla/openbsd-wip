# $OpenBSD: Makefile,v 1.20 2010/11/22 08:37:03 espie Exp $

COMMENT=	a library to provide file related widgets for pcmanfm

DISTNAME=	libfm-1.1.0

CATEGORIES=	x11

SHARED_LIBS+=	fm-gtk	0.0 # 1.0
SHARED_LIBS+=	fm	0.0 # 1.0

HOMEPAGE=	http://pcmanfm.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

WANTLIB = c m stdc++
WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += exif expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 menu-cache pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

BUILD_DEPENDS=	textproc/intltool
LIB_DEPENDS=	devel/glib2 \
		graphics/libexif \
		x11/gtk+2 \
		x11/libmenu-cache

MODULES=	devel/gettext
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/libfm

.include <bsd.port.mk>
