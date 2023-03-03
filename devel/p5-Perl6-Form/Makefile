COMMENT=		Implements the Perl 6 'form' built-in

MODULES=		cpan
VER=			0.090
DISTNAME=		Perl6-Form-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		DCONWAY

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Perl6-Export

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
