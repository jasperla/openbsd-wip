COMMENT=		interface to write lzf comp. data to files or buffers

MODULES=		cpan
VER=			2.096
DISTNAME=		IO-Compress-Lzf-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		archivers perl5
CPAN_AUTHOR=		PMQS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-Compress-LZF \
		archivers/p5-IO-Compress

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
