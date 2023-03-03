COMMENT=		Base Class for IO::Compress modules

MODULES=		cpan
VER=			2.096
DISTNAME=		IO-Compress-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		archivers perl5
CPAN_AUTHOR=		PMQS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-Compress-Raw-Bzip2 \
		archivers/p5-Compress-Raw-Zlib \
		archivers/p5-Compress-Raw-Lzma

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
