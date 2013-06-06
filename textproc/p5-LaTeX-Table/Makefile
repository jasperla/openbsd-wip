# $OpenBSD: Makefile,v 1.4 2008/09/08 00:07:40 jasper Exp $

COMMENT=		automatic generation of LaTeX tables in Perl

DISTNAME=		LaTeX-Table-v1.0.6
PKGNAME=		p5-${DISTNAME:S/-v/-/}
CATEGORIES=		textproc

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-FollowPBP \
			textproc/p5-Template

TEST_DEPENDS=		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
