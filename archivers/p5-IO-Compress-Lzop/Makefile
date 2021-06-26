# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		interface to write lzop comp. data to files or buffers

MODULES=		cpan
VER=			2.096
DISTNAME=		IO-Compress-Lzop-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		archivers perl5
CPAN_AUTHOR=		PMQS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-IO-Compress \
		archivers/p5-Compress-LZO

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
