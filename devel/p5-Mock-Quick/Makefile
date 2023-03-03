COMMENT=		Quickly mock objects and classes, even temporarily

MODULES=		cpan
VER=			1.111
DISTNAME=		Mock-Quick-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		EXODIST

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Exporter-Declare devel/p5-Fennec-Lite


CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
