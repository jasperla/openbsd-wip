COMMENT=		Perl wrapper to JSON-based Block.io API

MODULES=		cpan
VER=			0.02
DISTNAME=		Finance-BlockIO-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		NORTHRUP

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=		Yes
PERMIT_DISTFILES=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-WWW-Curl-Simple \
		devel/p5-namespace-clean
TEST_DEPENDS+= devel/p5-Pod-Coverage

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
