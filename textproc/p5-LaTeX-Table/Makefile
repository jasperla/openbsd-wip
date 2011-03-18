# $OpenBSD: Makefile,v 1.4 2008/09/08 00:07:40 jasper Exp $

COMMENT=		automatic generation of LaTeX tables in Perl

DISTNAME=		LaTeX-Table-v1.0.6
PKGNAME=		p5-${DISTNAME:S/-v/-/}
CATEGORIES=		textproc

MODULES=		cpan

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= modbuild

REGRESS_DEPENDS=::devel/p5-Test-NoWarnings

RUN_DEPENDS=	::devel/p5-Moose \
		::devel/p5-MooseX-FollowPBP \
		::textproc/p5-Template

.include <bsd.port.mk>
