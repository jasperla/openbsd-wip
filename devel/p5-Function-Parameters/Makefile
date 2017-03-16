# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"subroutine definitions with parameter lists"
DISTNAME=		Function-Parameters-1.0705
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
REVISION=		1

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Dir-Self

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MA/MAUKE/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
