# OpenBSD$

COMMENT =		easy database connections for Dancer2 applications

MODULES =		cpan
DISTNAME =		Dancer2-Plugin-Database-2.12
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		www/p5-Dancer2>=0.151000 \
			www/p5-Dancer-Plugin-Database-Core

TEST_DEPENDS =		databases/p5-DBD-SQLite \
			www/p5-HTTP-Message \
			www/p5-Plack>=1.0032

.include <bsd.port.mk>
