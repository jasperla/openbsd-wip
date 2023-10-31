COMMENT=		Sparse N-dimensional PDLs with compressed column storage

MODULES=		cpan
VER=			1.23.20
DISTNAME=		PDL-CCS-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		MOOCOW

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=		Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-PDL-VectorValued

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
