# $OpenBSD: $

COMMENT =	lossy PNG compressor
DISTNAME =	pngquant-2.1.0
CATEGORIES =	graphics

HOMEPAGE =	http://pngquant.org/

MAINTAINER =	Eric Radman <ericshane@eradman.com>

EXTRACT_SUFX =	-src.tar.bz2

# BSD-like, see COPYRIGHT
PERMIT_PACKAGE_CDROM =	Yes

LIB_DEPENDS =	graphics/png

WANTLIB +=	c m z png

MASTER_SITES =	${HOMEPAGE}

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pngquant ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pngquant.1 ${PREFIX}/man/man1

NO_TEST =	Yes

.include <bsd.port.mk>
