# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:02 naddy Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		POE-Component-SSLify-1.012
CATEGORIES=		net security

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		devel/p5-Module-Build-Tiny
RUN_DEPENDS=		devel/p5-POE \
			devel/p5-Task-Weaken \
			security/p5-Net_SSLeay
TEST_DEPENDS=		devel/p5-Test-FailWarnings \
			devel/p5-IO-Prompt-Tiny

.include <bsd.port.mk>
