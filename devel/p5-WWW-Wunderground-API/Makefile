COMMENT=		"Use Weather Underground's JSON/XML API"
DISTNAME=		WWW-Wunderground-API-0.08
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= converters/p5-JSON-MaybeXS \
		devel/p5-Moo \
		devel/p5-Hash-AsObject

SITES=		${SITE_PERL_CPAN:=../../authors/id/N/NE/NEBULOUS/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
