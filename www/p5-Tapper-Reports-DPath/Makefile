# $OpenBSD$

COMMENT =	extended DPath functionality for Tapper reports

MODULES =	cpan
DISTNAME =	Tapper-Reports-DPath-4.1.1
CATEGORIES =	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	converters/p5-JSON \
		devel/p5-CHI \
		devel/p5-Class-C3 \
		devel/p5-Data-DPath  \
		devel/p5-DateTime \
		devel/p5-Data-Dumper-Simple \
		devel/p5-Data-Structure-Util \
		devel/p5-File-ShareDir \
		devel/p5-Module-Find \
		devel/p5-Moose \
		devel/p5-MRO-Compat \
		devel/p5-Sub-Exporter \
		devel/p5-Test-Deep \
		devel/p5-YAML-XS \
		textproc/p5-Template \
		textproc/p5-Text-Balanced \
		www/p5-HTML-Mason \
		www/p5-Tapper-Model

BUILD_DEPENDS =	devel/p5-Class-C3 \
		devel/p5-MRO-Compat \
		devel/p5-Test-Deep \
		devel/p5-Test-Simple \
		devel/p5-Test-Fixture-DBIC-Schema \
		www/p5-Tapper-Schema

TEST_DEPENDS =	databases/p5-DBD-SQLite \
		devel/p5-Moo \
		devel/p5-Object-Enum

.include <bsd.port.mk>
