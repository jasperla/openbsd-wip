# $OpenBSD$

COMMENT =	backend functions for CLI and Web

MODULES =	cpan
DISTNAME =	Tapper-Cmd-4.1.8
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBI \
		devel/p5-DateTime \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-ShareDir \
		devel/p5-File-Slurp \
		devel/p5-Hash-Merge-Simple \
		devel/p5-Kwalify \
		devel/p5-Moose \
		devel/p5-Perl6-Junction \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		net/p5-Net-OpenSSH \
		www/p5-Tapper-Base \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Reports-DPath \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-Simple

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		devel/p5-Import-Into \
		devel/p5-Module-Runtime \
		devel/p5-Moo \
		devel/p5-Time-Duration-Parse \
		textproc/p5-String-RewritePrefix

.include <bsd.port.mk>
