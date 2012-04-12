# $OpenBSD:

COMMENT =	STUN server implementation RFCs 5389, 5769, and 5780

VERSION =	1.1.1
DISTVERSION =	1_1_1
DISTNAME =	stunserver_${DISTVERSION}
PKGNAME =	stuntman-${VERSION}
CATEGORIES =	net
EXTRACT_SUFX =	.tgz

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =	http://www.stunprotocol.org/

MASTER_SITES = http://www.stunprotocol.org/

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += 		c crypto m pthread stdc++

LIB_DEPENDS =		devel/boost

MAKE_FLAGS =		BOOST_INCLUDE='-I/usr/local/include'

USE_GMAKE =	Yes

WRKDIST = ${WRKDIR}/stunserver

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stunserver ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/stunclient ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/stuntestcode ${PREFIX}/sbin
	
.include <bsd.port.mk>
