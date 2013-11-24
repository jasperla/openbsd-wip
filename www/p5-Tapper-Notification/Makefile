# $OpenBSD $

COMMENT=	daemon and plugins to handle MCP notifications	

MODULES=	cpan
DISTNAME=	Tapper-Notification-4.1.1
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Language-Expr

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
