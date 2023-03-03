COMMENT=		"base role for creating web service clients"
DISTNAME=		WebService-Client-0.0501
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=         Yes
PERMIT_DISTFILES=       Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-HTTP-Response-Stringable

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/I/IR/IRONCAMEL/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
