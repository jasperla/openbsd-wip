COMMENT=		"perl methods for the Nest API"
DISTNAME=		Device-Nest-0.09
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= www/p5-libwww \
		converters/p5-JSON

SITES=		${SITE_PERL_CPAN:=../../authors/id/K/KE/KEDAR/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
