COMMENT=		Perl interface to MXNet machine learning library

MODULES=		cpan
VER=			1.5
DISTNAME=		AI-MXNet-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		SKOLYCHEV

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=		Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-PDL \
		devel/p5-PDL-CCS

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
