# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		ALMOST a drop-in replacement for Test::More

MODULES=		cpan
VER=			0.000139
DISTNAME=		Test2-Suite-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		EXODIST

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Term-Table \
		devel/p5-Sub-Info

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
