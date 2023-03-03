COMMENT=		interface to write zstd comp. data to files or buffers

MODULES=		cpan
VER=			2.097
DISTNAME=		IO-Compress-Zstd-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		archivers perl5
CPAN_AUTHOR=		PMQS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-IO-Compress \
		archivers/p5-Compress-Stream-Zstd

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
