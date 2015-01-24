# OpenBSD$

COMMENT =		Dancer 2 session storage in secure cookies

MODULES =		cpan
DISTNAME =		Dancer2-Session-Cookie-0.006
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		www/p5-Dancer2>=0.140001 \
			www/p5-Session-Storage-Secure>=0.010

TEST_DEPENDS =		www/p5-libwww \
			www/p5-HTTP-Date \
			net/p5-Test-TCP>=1.30 \
			devel/p5-YAML
 
.include <bsd.port.mk>
