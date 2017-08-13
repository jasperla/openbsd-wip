# $OpenBSD$

COMMENT =	optimizes PDF/DJVU files for mobile e-readers

V =		2.42
DISTNAME =	k2pdfopt_v${V}_src
PKGNAME =	k2pdfopt-${V}
MASTER_SITES =	http://willus.com/k2pdfopt/src/
EXTRACT_SUFX =	.zip

CATEGORIES =	converters

HOMEPAGE =	http://willus.com/k2pdfopt/
MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

WANTLIB +=	${COMPILER_LIBCXX} c freetype jbig2dec jpeg m png z \
		djvulibre jasper lept mupdf openjpeg tesseract

# DEBUG="-g": modify installed mupdf/fitz/context.h to #undef FITZ_DEBUG_LOCKING
BUILD_DEPENDS +=	textproc/mupdf:patch \
			graphics/leptonica:configure \
			graphics/tesseract/tesseract:patch

LIB_DEPENDS +=	graphics/png \
		graphics/jpeg \
		graphics/jbig2dec \
		graphics/openjpeg \
		textproc/mupdf \
		graphics/djvulibre \
		graphics/gocr \
		graphics/leptonica \
		graphics/tesseract/tesseract

RUN_DEPENDS +=	print/ghostscript/gnu

WRKDIST =	${WRKDIR}/k2pdfopt_v${V}

post-extract:
	ln -s ${WRKDIR}/graphics/leptonica/leptonica-* ${WRKSRC}/leptonica
	ln -s ${WRKDIR}/graphics/tesseract/tesseract/tesseract-* \
		${WRKSRC}/tesseract
	ln -s ${WRKDIR}/textproc/mupdf/mupdf-* ${WRKSRC}/mupdf

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

.include <bsd.port.mk>
