# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		interface to popular shipping/courier services

MODULES=		cpan
VER=			3.06
DISTNAME=		Shipment-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
CPAN_AUTHOR=		BAERGAJ

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-MooX-HandlesVia \
		devel/p5-MooX-Types-MooseLike \
		devel/p5-DateTime-Format-ISO8601 \
		devel/p5-Data-Currency \
		devel/p5-MooX-Types-MooseLike-DateTime \
		devel/p5-MooX-Aliases \
		devel/p5-Class-Std-Fast \
		devel/p5-XML-Compile \
		devel/p5-File-Util \
		converters/p5-Locale-SubCountry

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
