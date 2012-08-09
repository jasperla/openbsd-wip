# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

# XXX build fails finding struct pdf_xref
# Turns out our mupdf is too new

COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-mupdf

# XXX WANTLIB

WANTLIB += xcb xcb-render xcb-shm z

LIB_DEPENDS +=	textproc/mupdf

.include <bsd.port.mk>

