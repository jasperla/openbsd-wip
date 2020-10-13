# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		P5 interface to write lzma comp. data to files or buffer

MODULES=		cpan
VER=			2.096
DISTNAME=		IO-Compress-Lzma-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		archivers perl5
CPAN_AUTHOR=		PMQS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-IO-Compress

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
