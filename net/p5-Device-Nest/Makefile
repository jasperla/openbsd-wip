# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Methods to wrap the Nest API"
DISTNAME=		Device-Nest-0.07
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=     Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= www/p5-libwww

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/K/KE/KEDAR/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
