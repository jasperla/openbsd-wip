# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Perl wrapper to JSON-based Block.io API

MODULES=		cpan
VER=			0.02
DISTNAME=		Finance-BlockIO-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		NORTHRUP

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-WWW-Curl-Simple \
		devel/p5-namespace-clean
TEST_DEPENDS+= devel/p5-Pod-Coverage

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
