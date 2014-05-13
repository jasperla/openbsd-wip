# $OpenBSD$

COMMENT =	remote network API for result evaluation

MODULES =	cpan
DISTNAME =	Tapper-Reports-API-4.1.2
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 	devel/p5-Data-Serializer \
		devel/p5-Data-Dumper-Simple \
		devel/p5-Moose \
		devel/p5-MooseX-Daemonize \
		devel/p5-Net-Server \
		www/p5-Tapper-Model \
		www/p5-Tapper-Reports-DPath \

BUILD_DEPENDS =	devel/p5-Class-C3 \
		devel/p5-File-Slurp \
		devel/p5-MRO-Compat \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
		devel/p5-Test-Simple \
		www/p5-Tapper-Schema \
		www/p5-Tapper-Config

TEST_DEPENDS =	devel/p5-Object-Enum \
		devel/p5-Moo \
		databases/p5-DBD-SQLite

.include <bsd.port.mk>
