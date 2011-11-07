# $OpenBSD: Makefile,v 1.20 2010/11/22 08:37:03 espie Exp $

COMMENT=	fast and lightweight file manager

DISTNAME=	pcmanfm-0.9.10

CATEGORIES=	x11

HOMEPAGE=	http://pcmanfm.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat
WANTLIB += fm fm-gtk
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m menu-cache pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += ffi stdc++

LIB_DEPENDS=	x11/gnome/icon-theme \
		x11/gtk+2 \
		x11/libfm \
		x11/libmenu-cache

MODULES=	devel/gettext
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

CONFIGURE_ARGS= --sysconfdir=${SYSCONFDIR}

FAKE_FLAGS=     sysconfdir=${PREFIX}/share/examples/pcmanfm

.include <bsd.port.mk>
