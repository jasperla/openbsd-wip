COMMENT=		"Lightning-fast URL fetcher"
DISTNAME=		Furl-3.08
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= www/p5-HTTP-Parser-XS \
		devel/p5-Class-Accessor-Lite \
		net/p5-Test-TCP \
		www/p5-Plack \
		converters/p5-Net-IDN-Encode \
		www/p5-HTTP-Proxy

SITES=		${SITE_PERL_CPAN:=../../authors/id/T/TO/TOKUHIROM/}

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
