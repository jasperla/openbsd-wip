# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Facility for creating read-only scalars, arrays, and hashes

MODULES=		cpan
VER=			0.014
DISTNAME=		Const-Fast-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		LEONT

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Module-Build-Tiny

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
