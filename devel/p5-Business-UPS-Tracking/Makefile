# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Interface to the UPS tracking webservice

MODULES=		cpan
VER=			1.13
DISTNAME=		Business-UPS-Tracking-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		MAROS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= textproc/p5-Text-SimpleTable

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
