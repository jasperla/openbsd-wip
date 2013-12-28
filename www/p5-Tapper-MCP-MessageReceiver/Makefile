# $OpenBSD $

COMMENT=	message receiver for Tapper MCP

MODULES=	cpan
DISTNAME=	Tapper-MCP-MessageReceiver-4.1.3
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=    devel/p5-Log-Log4perl \
		devel/p5-Module-Find \
		devel/p5-Mojolicious \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-YAML-Syck \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema

BUILD_DEPENDS=  ${RUN_DEPENDS}

.include <bsd.port.mk>
