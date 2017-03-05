# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"building, finding, using SDL libs"

MODULES=		cpan
VER=			1.446
DISTNAME=		Alien-SDL-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		FROGGS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= sysutils/p5-File-Which \
		archivers/p5-Archive-Extract \
		devel/p5-Text-Patch

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
