# $OpenBSD: $

COMMENT=	lossy PnG compressor

DISTNAME=	pngquant-2.0.0
EXTRACT_SUFX=	-src.tar.bz2

CATEGORIES=	graphics

HOMEPAGE=	http://pngquant.org/

MAINTAINER=	Eric Radman <ericshane@eradman.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=    graphics/png

WANTLIB+= c m z png

MASTER_SITES=	${HOMEPAGE}

USE_GMAKE=      Yes

NO_TEST=        Yes


.include <bsd.port.mk>
