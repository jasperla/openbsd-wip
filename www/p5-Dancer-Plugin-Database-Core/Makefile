# OpenBSD$

COMMENT =		shared core for D1 and D2 Database plugins

MODULES =		cpan
DISTNAME =		Dancer-Plugin-Database-Core-0.08
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		databases/p5-DBI

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
