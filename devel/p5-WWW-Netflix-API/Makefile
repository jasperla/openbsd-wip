COMMENT=		"Interface for Netflix's API"

MODULES=		cpan
VER=			0.12
DISTNAME=		WWW-Netflix-API-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		STEVED

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= net/p5-Net-OAuth
TEST_DEPENDS+= devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
