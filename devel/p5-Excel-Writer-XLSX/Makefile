COMMENT=		"Creates a new file in Excel 2007+ XLSX format"
DISTNAME=		Excel-Writer-XLSX-0.77
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= archivers/p5-Archive-Zip

SITES=		${SITE_PERL_CPAN:=../../authors/id/J/JM/JMCNAMARA/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
