# $OpenBSD: $

COMMENT=	app for forwarding applications and desktop screens

DISTNAME=	xpra-0.16.1

CATEGORIES=	x11

HOMEPAGE=	https://xpra.org/

EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	https://xpra.org/src/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst expat ffi fontconfig
WANTLIB += freetype intl m pixman-1 pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xkbfile z
WANTLIB += ${MODPY_WANTLIB}

MODULES=	lang/python

BUILD_DEPENDS =	devel/py-rencode \
		graphics/gdk-pixbuf2 \
		lang/cython \
		multimedia/libvpx \
		multimedia/x264 \
		x11/py-gtk2
#LIB_DEPENDS =

#RUN_DEPENDS =

.include <bsd.port.mk>
