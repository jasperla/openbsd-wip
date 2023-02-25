# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		printf alternative

MODULES=		cpan
VER=			0.94
DISTNAME=		String-Print-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		MARKOV

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= converters/p5-Unicode-LineBreak

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
