# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Creates a new file in Excel 2007+ XLSX format"
DISTNAME=		Excel-Writer-XLSX-0.77
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-Archive-Zip

MASTER_SITES=    ${MASTER_SITE_PERL_CPAN:=../../authors/id/J/JM/JMCNAMARA/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
