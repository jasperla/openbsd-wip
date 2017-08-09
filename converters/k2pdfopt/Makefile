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

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

LIB_DEPENDS+=	textproc/mupdf \
		graphics/djvulibre

WRKSRC =	k2pdfopt_v${V}

.include <bsd.port.mk>
