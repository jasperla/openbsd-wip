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

# Include p5-IO-Socket-SSL as selected
# dependency for p5-Net-HTTP must be before
# p5-LWP-Protcol-https must be present and
# in this order to avoid looping dependencies
BUILD_DEPENDS =	devel/p5-Try-Tiny>=0.9 \
		security/p5-IO-Socket-SSL \
		www/p5-LWP-Protocol-https>=6.02

CONFIGURE_ARGS+=	--default --lib=/usr

# Use make -D LIVE_TEST regress to run regression with live tests
.ifdef	LIVE_TEST
CONFIGURE_ARGS +=	--live-tests
.else
CONFIGURE_ARGS +=	--no-live-tests
.endif

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
