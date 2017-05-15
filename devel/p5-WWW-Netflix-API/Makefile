# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Interface for Netflix's API"

MODULES=		cpan
VER=			0.12
DISTNAME=		WWW-Netflix-API-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		STEVED

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= net/p5-Net-OAuth
TEST_DEPENDS+= devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
