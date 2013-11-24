# $OpenBSD $

COMMENT=	message receiver for Tapper MCP

MODULES=	cpan
DISTNAME=	Tapper-MCP-MessageReceiver-4.1.3
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    www/p5-Mojo

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
