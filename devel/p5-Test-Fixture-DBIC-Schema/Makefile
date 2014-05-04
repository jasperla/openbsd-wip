# $OpenBSD$

COMMENT =	load fixture data to storage

MODULES =	cpan
DISTNAME =	Test-Fixture-DBIC-Schema-0.04
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBIx-Class \
		devel/p5-Kwalify \
		devel/p5-Params-Validate \
		devel/p5-YAML-Syck

TEST_DEPENDS =	databases/p5-DBD-SQLite

.include <bsd.port.mk>
