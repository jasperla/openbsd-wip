COMMENT=		Exporting done right

MODULES=		cpan
VER=			0.114
DISTNAME=		Exporter-Declare-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		EXODIST

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Meta-Builder \
     devel/p5-aliased \
     devel/p5-Fennec-Lite



CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
