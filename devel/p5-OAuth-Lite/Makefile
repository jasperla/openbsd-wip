COMMENT=		OAuth framework

MODULES=		cpan
VER=			1.35
DISTNAME=		OAuth-Lite-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		LYOKATO

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=		Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-List-MoreUtils \
		security/p5-Crypt-OpenSSL-Random

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
