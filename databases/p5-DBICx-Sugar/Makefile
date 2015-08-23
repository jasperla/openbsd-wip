# $OpenBSD$

COMMENT =		syntax sugar for DBIx::Class

MODULES =		cpan
DISTNAME =		DBICx-Sugar-0.0001
CATEGORIES =		databases

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		IRONCAMEL

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		databases/p5-DBIx-Class \
			databases/p5-SQL-Translator>=0.11018 \
			devel/p5-YAML

TEST_DEPENDS =		databases/p5-DBD-SQLite \
			databases/p5-DBIx-Class \
			databases/p5-DBIx-Class-Schema-Loader \
			devel/p5-Test-Modern \
			devel/p5-Test-Requires

.include <bsd.port.mk>
