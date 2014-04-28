# $OpenBSD$

COMMENT =	testplan support with TaskJuggler interoperability

MODULES =	cpan
DISTNAME =	Tapper-Testplan-4.1.2
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-CHI \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-DateParse \
		devel/p5-DateTime-Format-Natural \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-File-ShareDir \
		devel/p5-File-Slurp \
		devel/p5-Hash-Merge \
		devel/p5-Moose \
		devel/p5-Module-Find \
		devel/p5-Test-Differences \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
		mail/p5-Email-Sender \
		textproc/p5-Template \
		textproc/p5-Text-CSV \
		textproc/p5-Text-CSV-Slurp \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		devel/p5-Class-Load \
		devel/p5-Import-Into \
		devel/p5-Moo \
		devel/p5-Module-Runtime \
		devel/p5-Test-Pod \
		devel/p5-Time-Duration-Parse \
		textproc/p5-String-RewritePrefix

.include <bsd.port.mk>
