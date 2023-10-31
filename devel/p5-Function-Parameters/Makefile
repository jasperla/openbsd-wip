COMMENT=		"subroutine definitions with parameter lists"
DISTNAME=		Function-Parameters-1.0705
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
REVISION=		1

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=     Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Dir-Self

SITES=		${SITE_PERL_CPAN:=../../authors/id/M/MA/MAUKE/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
