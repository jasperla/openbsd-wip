COMMENT=		helpful routines to Log::Report

MODULES=		cpan
VER=			1.07
DISTNAME=		Log-Report-Optional-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		MARKOV

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-String-Print

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
