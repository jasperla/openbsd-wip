# $OpenBSD $

COMMENT =	tapper-* commandline tools

MODULES =	cpan
DISTNAME =	Tapper-CLI-4.1.3
PKGNAME =	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES =	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	archivers/p5-Compress-Bzip2 \
		devel/p5-App-Cmd \
		devel/p5-App-Rad \
		devel/p5-Class-Load \
		devel/p5-Class-C3 \
		devel/p5-Data-DPath \
		devel/p5-Data-Dumper-Simple \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-DateParse \
		devel/p5-DateTime-Format-Natural \
		devel/p5-File-ShareDir \
		devel/p5-File-Slurp \
		devel/p5-Hash-Merge-Simple \
		devel/p5-Iterator \
		devel/p5-Iterator-Util \
		devel/p5-Kwalify \
		devel/p5-LockFile-Simple \
		devel/p5-Moose \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-MRO-Compat \
		devel/p5-Perl6-Junction \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule  \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		devel/p5-YAML-XS \
		devel/p5-aliased \
		devel/p5-common-sense \
		databases/p5-DBIx-Class \
		mail/p5-Email-Sender \
		textproc/p5-Template \
		textproc/p5-Text-CSV-Slurp \
		www/p5-Tapper-Base \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Notification \
		www/p5-Tapper-Reports-DPath \
		www/p5-Tapper-Schema \
		www/p5-Tapper-Testplan

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		devel/p5-strictures \
		devel/p5-Time-Duration-Parse \
		devel/p5-Moo \
		devel/p5-Import-Into

.include <bsd.port.mk>
