# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		"Terminal app providing weather via wunderground api"
DISTNAME=		App-wu-0.05
CATEGORIES=		astro

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-WWW-Wunderground-API \
		devel/p5-Cache-Cache

MODULES +=	cpan

.include <bsd.port.mk>
