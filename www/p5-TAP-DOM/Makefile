# $OpenBSD $

COMMENT=	TAP as document data structure

MODULES=	cpan
DISTNAME=	TAP-DOM-0.10
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=   	devel/p5-Data-OptList \
		devel/p5-Params-Util \
		devel/p5-Sub-Install \
		devel/p5-Sub-Exporter

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
