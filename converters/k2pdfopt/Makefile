# $OpenBSD$

COMMENT =	optimizes PDF/DJVU files for mobile e-readers

V =		2.42
DISTNAME =	k2pdfopt_v${V}_src
PKGNAME =	k2pdfopt-${V}
MASTER_SITES =	http://willus.com/k2pdfopt/src/
MASTER_SITES0 =	http://mupdf.com/downloads/ \
	                http://mupdf.com/downloads/archive/
EXTRACT_SUFX =	.zip

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		mupdf-1.11-source.tar.gz:0


CATEGORIES =	converters

HOMEPAGE =	http://willus.com/k2pdfopt/
MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

# Required
LIB_DEPENDS +=	graphics/png \
		graphics/jpeg
# MuPDF
LIB_DEPENDS +=	graphics/jbig2dec \
		graphics/openjpeg \
		textproc/mupdf
# DjVuLibre
LIB_DEPENDS +=	graphics/djvulibre
# OCR
LIB_DEPENDS +=	graphics/gocr \
		graphics/leptonica \
		graphics/tesseract/tesseract

CFLAGS +=	-I${WRKDIR}/mupdf-1.11-source/source/fitz

WRKDIST =	${WRKDIR}/k2pdfopt_v${V}

.include <bsd.port.mk>
