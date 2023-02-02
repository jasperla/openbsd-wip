# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		API for Evernote

MODULES=		cpan
VER=			0.081
DISTNAME=		Net-Evernote-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		DMC

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Exception-Class

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
