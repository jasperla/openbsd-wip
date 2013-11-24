# $OpenBSD $

COMMENT=	remote network API for result evaluation

MODULES=	cpan
DISTNAME=	Tapper-Reports-API-4.1.2
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Net-Server \
		www/p5-HTML-Mason \
		www/p5-CHI

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
