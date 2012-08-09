# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += GL X11 Xrender cairo expat fontconfig freetype girara-gtk2
WANTLIB += glib-2.0 gobject-2.0 iconv intl m pixman-1 png pthread-stubs
WANTLIB += spectre xcb xcb-render xcb-shm z

.include <bsd.port.mk>

