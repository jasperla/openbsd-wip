# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Use Weather Underground's JSON/XML API"
DISTNAME=		WWW-Wunderground-API-0.08
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= converters/p5-JSON-MaybeXS \
		devel/p5-Hash-AsObject

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/N/NE/NEBULOUS/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
