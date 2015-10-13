# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Rule based validator on type constraint system"
DISTNAME=		Data-Validator-1.07
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Test-Requires

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/G/GF/GFUJI/}

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
