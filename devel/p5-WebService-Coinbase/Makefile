# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"coinbase.com API bindings"
DISTNAME=		WebService-Coinbase-0.0200
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= security/p5-CryptX \
		devel/p5-Function-Parameters \
		devel/p5-WebService-Client

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/I/IR/IRONCAMEL/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
