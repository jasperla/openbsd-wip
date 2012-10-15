# $OpenBSD: Makefile,v 1.32 2012/10/12 09:16:07 bluhm Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide LWP https support via OpenSSL

MODULES=	cpan
DISTNAME=	Crypt-SSLeay-0.64
REVISION=	0
CATEGORIES=	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=		c crypto ssl z

RUN_DEPENDS =	www/p5-LWP-Protocol-https>=6.02

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-Try-Tiny>=0.9

CONFIGURE_ARGS+=--default --lib=/usr --no-live-tests

# Use make -D LIVE_TEST regress to run regression with live tests
pre-regress:
.ifdef	LIVE_TEST
	perl -pi -e 's/network_tests\s+0/network_tests 1/' ${WRKSRC}/test.config
.endif

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
