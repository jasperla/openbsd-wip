# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Lightning-fast URL fetcher"
DISTNAME=		Furl-3.08
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= www/p5-HTTP-Parser-XS \
		devel/p5-Class-Accessor-Lite \
		net/p5-Test-TCP \
		www/p5-Plack \
		converters/p5-Net-IDN-Encode \
		www/p5-HTTP-Proxy

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/T/TO/TOKUHIROM/}

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
