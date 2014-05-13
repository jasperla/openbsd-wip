# $OpenBSD $

COMMENT =	tapper-* commandline tools

MODULES =	cpan
DISTNAME =	Tapper-CLI-4.1.3
CATEGORIES =	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	archivers/p5-Compress-Bzip2 \
		devel/p5-App-Cmd \
		devel/p5-App-Rad \
		devel/p5-Data-Dumper-Simple \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Natural \
		devel/p5-File-ShareDir \
		devel/p5-File-Slurp \
		devel/p5-Moose \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		devel/p5-YAML-XS \
		textproc/p5-Template \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema \
		www/p5-Tapper-Testplan

BUILD_DEPENDS =	devel/p5-Class-C3 \
		devel/p5-MRO-Compat \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-Simple \
		www/p5-Tapper-Schema

TEST_DEPENDS =	databases/p5-DBD-SQLite \
		devel/p5-Object-Enum \
		devel/p5-Moo

.include <bsd.port.mk>
