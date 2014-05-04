# $OpenBSD$

COMMENT =	database schemas for Tapper

MODULES =	cpan
DISTNAME =	Tapper-Schema-4.1.3
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 	archivers/p5-Compress-Bzip2 \
		databases/p5-DBIx-Class \
		databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		databases/p5-SQL-Translator \
		devel/p5-common-sense \
		devel/p5-Class-C3 \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-MySQL \
		devel/p5-DateTime-Format-Pg \
		devel/p5-DateTime-Format-SQLite \
		devel/p5-MRO-Compat \
		devel/p5-TAP-DOM \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-YAML-Syck \
		www/p5-Tapper-Config \
		www/p5-Tapper-TAP-Harness

#BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Module-Runtime

.include <bsd.port.mk>
