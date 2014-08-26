# $OpenBSD$

COMMENT =	context sensitive connected DBIC schema

MODULES =	cpan
DISTNAME =	Tapper-Model-4.1.2
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-C3 \
		devel/p5-MRO-Compat \
		www/p5-Tapper-Config \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	devel/p5-Data-DPath \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Data-Dumper-Simple \
		devel/p5-Test-Simple

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp

.include <bsd.port.mk>
