# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		report a problem

MODULES=		cpan
VER=			1.33
DISTNAME=		Log-Report-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		MARKOV

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Log-Report-Optional

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
