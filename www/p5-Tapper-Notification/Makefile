# $OpenBSD$

COMMENT =	daemon and plugins to handle MCP notifications

MODULES =	cpan
DISTNAME =	Tapper-Notification-4.1.1
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-App-Daemon \
		devel/p5-Data-DPath \
		devel/p5-Hash-Merge-Simple \
		devel/p5-Language-Expr \
		devel/p5-LockFile-Simple \
		devel/p5-Log-Log4perl \
		devel/p5-Module-Find \
		devel/p5-Moose \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
		devel/p5-Try-Tiny \
		mail/p5-Email-Sender \
		mail/p5-Email-Simple \
		www/p5-Tapper-Base \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Reports-DPath \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Import-Into \
		devel/p5-Moo

.include <bsd.port.mk>
