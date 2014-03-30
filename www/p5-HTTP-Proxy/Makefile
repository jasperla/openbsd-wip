# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:46 espie Exp $

COMMENT=	pure Perl HTTP proxy

MODULES=	cpan
DISTNAME=	HTTP-Proxy-0.300
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	www/p5-libwww
RUN_DEPENDS =	www/p5-libwww

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
