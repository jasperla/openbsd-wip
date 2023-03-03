COMMENT=		basic currency formatting and conversion

MODULES=		cpan
VER=			0.06000
DISTNAME=		Data-Currency-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		DICHI

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Locale-Codes \
		devel/p5-Locale-Currency-Format \
		devel/p5-Finance-Currency-Convert-WebserviceX

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
