# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

V =		0.1.0
COMMENT =	comic book plugin for zathura
DISTNAME =	zathura-cb-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-cb/

LIB_DEPENDS +=	graphics/cairo
RUN_DEPENDS +=	archivers/unrar \
		archivers/unzip \
		archivers/p7zip

WANTLIB += GL X11 Xrender cairo expat fontconfig freetype glib-2.0
WANTLIB += gobject-2.0 iconv intl m pixman-1 png pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

.include <bsd.port.mk>

