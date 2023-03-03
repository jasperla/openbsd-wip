COMMENT=		xml compilation

MODULES=		cpan
VER=			1.63
DISTNAME=		XML-Compile-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		MARKOV

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Log-Report \
		devel/p5-XML-Compile-Tester

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
