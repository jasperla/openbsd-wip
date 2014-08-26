# $OpenBSD$

COMMENT =	daemon and plugins to handle MCP actions

MODULES =	cpan
DISTNAME =	Tapper-Action-4.1.1
CATEGORIES =	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBIx-Class \
		devel/p5-App-Daemon \
		devel/p5-Class-Load \
		devel/p5-File-Slurp \
		devel/p5-File-ShareDir \
		devel/p5-Hash-Merge-Simple \
		devel/p5-LockFile-Simple \
		devel/p5-Log-Log4perl \
		devel/p5-Moose \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		devel/p5-App-Daemon \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

post-install:
		touch /tmp/tapper-action-daemon.log
		chown -R action-daemon_user:tapper  /tmp/tapper-action-daemon.log

.include <bsd.port.mk>
