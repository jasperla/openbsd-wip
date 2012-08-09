# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += GL X11 Xrender cairo djvulibre expat fontconfig freetype
WANTLIB += girara-gtk2 glib-2.0 gobject-2.0 iconv intl m pixman-1
WANTLIB += png pthread-stubs xcb xcb-render xcb-shm z

.include <bsd.port.mk>

