# $OpenBSD$

COMMENT =	security oriented fuzzer with powerful analysis options

GH_ACCOUNT =	google
GH_PROJECT =	honggfuzz
GH_COMMIT =	26d0e9b5aa21e3fa5ae639380d502eee81813fb9

DISTNAME =	honggfuzz-1.9.20191105

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m pthread

BUILD_DEPENDS =	devel/blocksruntime

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/honggfuzz ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/hfuzz_cc/hfuzz-cc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/hfuzz_cc/hfuzz-clang ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/hfuzz_cc/hfuzz-clang++ ${PREFIX}/bin

.include <bsd.port.mk>
