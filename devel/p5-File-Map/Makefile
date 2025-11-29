COMMENT=		Memory mapping made simple and safe.

MODULES=		cpan
VER=			0.71
DISTNAME=		File-Map-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		LEONT

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=		Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Test-Warnings

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
