# $OpenBSD$

COMMENT =	easiest start without hassle

MODULES =	cpan
DISTNAME =	Task-Tapper-Hello-World-0.002
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-DBI \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-Slurp \
		devel/p5-Module-Install \
		devel/p5-Test-WWW-Mechanize \
		www/p5-Tapper-CLI \
		www/p5-Tapper-Config \
		www/p5-Tapper-MCP \
		www/p5-Tapper-MCP-MessageReceiver \
		www/p5-Tapper-Reports-API \
		www/p5-Tapper-Reports-Receiver \
		www/p5-Tapper-Reports-Web \
		www/p5-Tapper-TAP-Harness \
		www/p5-Tapper-TestSuite-AutoTest \
		www/p5-Tapper-TestSuite-Benchmark-Perl-Formance \
		www/p5-Tapper-TestSuite-HWTrack

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
