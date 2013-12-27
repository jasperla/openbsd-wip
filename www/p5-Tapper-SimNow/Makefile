# $OpenBSD $

COMMENT=	support for running SimNow sessions	

MODULES=	cpan
DISTNAME=	Tapper-SimNow-4.1.1
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-common-sense \
		devel/p5-Daemon-Daemonize \
		devel/p5-Log-Log4perl \
		devel/p5-Moose \
		devel/p5-Path-Class \
		devel/p5-Test-MockModule \
		www/p5-Tapper-Base \
		www/p5-Tapper-Remote \
		devel/p5-YAML-Syck

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
