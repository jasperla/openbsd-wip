# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:29 naddy Exp $

COMMENT=		the Illicit Love Child of Moose and POE

DISTNAME=		MooseX-POE-0.215

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		devel/p5-Test-Fatal
RUN_DEPENDS=		devel/p5-Moose>=2.0002 \
			devel/p5-POE>=1.310

TEST_DEPENDS=		devel/p5-MooseX-Declare>=0.35 \
			devel/p5-MooseX-Daemonize

.include <bsd.port.mk>
