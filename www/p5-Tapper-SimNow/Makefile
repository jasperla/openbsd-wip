# $OpenBSD $

COMMENT=	support for running SimNow sessions	

MODULES=	cpan
DISTNAME=	Tapper-SimNow-4.1.1
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    www/p5-Daemon-Daemonize

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
