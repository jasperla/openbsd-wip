# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Perl module for accessing the OpenAI API

MODULES=		cpan
VER=			0.07
DISTNAME=		OpenAI-API-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		NFERRAZ

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= 	www/p5-libwww \
			converters/p5-JSON-MaybeXS

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
