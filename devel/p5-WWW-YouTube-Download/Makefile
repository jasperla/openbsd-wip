# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Very simple YouTube video download interface

MODULES=		cpan
VER=			0.63
DISTNAME=		WWW-YouTube-Download-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		OALDERS

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-Mock-Quick \
		textproc/p5-XML-TreePP

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
