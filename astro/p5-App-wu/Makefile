# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Terminal app providing weather via wunderground api"
DISTNAME=		App-wu-0.05
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		astro perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-WWW-Wunderground-API \
		devel/p5-Cache-Cache

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/D/DF/DFARRELL/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
