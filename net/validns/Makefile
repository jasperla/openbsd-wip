# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	DNS and DNSSEC zone file validator

DISTNAME =	validns-0.8

CATEGORIES =	net

HOMEPAGE =	http://www.validns.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	Judy c crypto pthread

MASTER_SITES =	${HOMEPAGE}download/

LIB_DEPENDS =	devel/libJudy

TEST_DEPENDS =	devel/p5-Test-Command-Simple

MAKE_ENV =	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET =	validns

#NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/validns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/validns.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
