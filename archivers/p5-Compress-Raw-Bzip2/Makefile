# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Low-Level Interface to bzip2 comprssion library

MODULES=		cpan
VER=			2.096
DISTNAME=		Compress-Raw-Bzip2-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		archivers perl5
CPAN_AUTHOR=		PMQS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

#RUN_DEPENDS+= ${BUILD_DEPENDS}
#BUILD_DEPENDS+= 
TEST_DEPENDS+=	devel/p5-Test-Pod \
		devel/p5-Test-CPAN-Meta

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
