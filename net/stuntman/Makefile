# $OpenBSD:

COMMENT =	STUN server implementation RFCs 5389, 5769, and 5780

VERSION =	1.2.3
DISTNAME =	stunserver-${VERSION}
PKGNAME =	stuntman-${VERSION:S/_/./g}
CATEGORIES =	net
EXTRACT_SUFX =	.tgz

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =	http://www.stunprotocol.org/

MASTER_SITES =	${HOMEPAGE}

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += 	c crypto m pthread stdc++

BUILD_DEPENDS =	devel/boost

MAKE_FLAGS =	BOOST_INCLUDE='-I/usr/local/include' \
		FLAVOR_FLAGS='${CXXFLAGS} -Wno-unknown-pragmas'

USE_GMAKE =	Yes

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/stunserver

do-install:
.for s in stunserver stunclient stuntestcode
	${INSTALL_PROGRAM} ${WRKSRC}/$s ${PREFIX}/sbin
.endfor
	cd ${WRKSRC}/resources/; ${INSTALL_MAN} stunclient.1 stunserver.1 \
	    ${PREFIX}/man/man1

.include <bsd.port.mk>
