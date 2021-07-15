# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		common url validation methods

MODULES=		cpan
VER=			0.07
DISTNAME=		Data-Validate-URI-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		SONNEN

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Data-Validate-Domain \
		devel/p5-Data-Validate-IP

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
