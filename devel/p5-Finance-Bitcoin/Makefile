# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"manage a bitcoin instance"
DISTNAME=		Finance-Bitcoin-0.902
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Moo \
		devel/p5-JSON-RPC

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/T/TO/TOBYINK/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
