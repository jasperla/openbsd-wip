COMMENT =		DBI driver for ODBC

MODULES =		cpan
DISTNAME =		DBD-ODBC-1.61
CATEGORIES =		databases

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c iodbc

LIB_DEPENDS =		databases/iodbc,-main
#			databases/freetds
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/p5-DBI

#TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
