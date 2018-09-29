# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:30 naddy Exp $

COMMENT=		peek into the internals of a running POE environment

DISTNAME=		POE-API-Peek-2.20

CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Devel-Size \
			devel/p5-POE>=1.311
TEST_DEPENDS=		devel/p5-Test-Distribution \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
