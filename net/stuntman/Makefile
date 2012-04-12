# $OpenBSD:

COMMENT =	STUN server implementation RFCs 5389, 5769, and 5780

VERSION =	1_1_1
DISTNAME =	stunserver_${VERSION}
PKGNAME =	stuntman-${VERSION:S/_/./g}
CATEGORIES =	net
EXTRACT_SUFX =	.tgz

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =	http://www.stunprotocol.org/

MASTER_SITES =	${HOMEPAGE}

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += 	c crypto m pthread stdc++

LIB_DEPENDS =	devel/boost

MAKE_FLAGS =	BOOST_INCLUDE='-I/usr/local/include' FLAVOR_FLAGS='${CFLAGS}'

USE_GMAKE =	Yes

NO_REGRESS =	Yes

WRKDIST =	${WRKDIR}/stunserver

do-install:
.for s in stunserver stunclient stuntestcode
	${INSTALL_PROGRAM} ${WRKSRC}/$s ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
