COMMENT=		"Rule based validator on type constraint system"
DISTNAME=		Data-Validator-1.07
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=		Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Test-Requires

SITES=    ${SITE_PERL_CPAN:=../../authors/id/G/GF/GFUJI/}

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
