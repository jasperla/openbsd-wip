# $OpenBSD $

COMMENT=	fake modules for testing the automation layer	

MODULES=	cpan
DISTNAME=	Tapper-Fake-4.1.1
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-common-sense \
		devel/p5-Class-C3 \
		devel/p5-Devel-Backtrace \
		devel/p5-Test-Fixture-DBIC-Schema \
                devel/p5-MRO-Compat \
                devel/p5-Moose \
		devel/p5-YAML-Syck \
                www/p5-Tapper-Base \
                www/p5-Tapper-Config \
                www/p5-Tapper-MCP \
                www/p5-Tapper-Model \
                www/p5-Tapper-Schema

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
