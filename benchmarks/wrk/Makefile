# $OpenBSD$

COMMENT =	modern HTTP benchmarking tool

GH_ACCOUNT =	wg
GH_PROJECT =	wrk
GH_TAGNAME =	4.1.0

CATEGORIES =	benchmarks

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0, BSD, MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto luajit-5.1 m pthread ssl

LIB_DEPENDS =	lang/luajit

USE_GMAKE =	Yes

MAKE_ENV =	WITH_LUAJIT=${LOCALBASE} WITH_OPENSSL=/usr VER=${GH_TAGNAME}

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wrk ${PREFIX}/bin

.include <bsd.port.mk>
.if ${PROPERTIES:Mclang}
MAKE_ENV +=	LIBS=-lc++abi
WANTLIB +=	c++abi
.endif
