# $OpenBSD$

COMMENT =	central master control program of Tapper automation

MODULES =	cpan
DISTNAME =	Tapper-MCP-4.1.2
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-App-Daemon \
		devel/p5-Class-C3 \
		devel/p5-Class-Load \
		devel/p5-Devel-Backtrace \
		devel/p5-Data-DPath \
		devel/p5-Hash-Merge-Simple \
		devel/p5-Kwalify \
		devel/p5-LockFile-Simple \
		devel/p5-Log-Log4perl \
		devel/p5-Moose \
		devel/p5-MooseX-Traits \
		devel/p5-MooseX-Singleton \
		devel/p5-MooseX-ClassAttribute \
		devel/p5-MRO-Compat \
		devel/p5-Perl6-Junction \
		devel/p5-Sysadm-Install \
		devel/p5-TAP-DOM \
		devel/p5-Test-Deep \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		devel/p5-YAML \
		devel/p5-aliased \
		devel/p5-common-sense \
		net/p5-Net-OpenSSH \
		net/p5-Net-SCP \
		net/p5-Net-SSH-Perl \
		security/p5-AAAA-Crypt-DH \
		textproc/p5-String-Diff \
		www/p5-LWP-UserAgent-Determined \
		www/p5-Tapper-Base \
		www/p5-Tapper-Cmd \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Producer \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-Test-MockModule \
		net/p5-Net-SSH \
		textproc/p5-String-Diff

.include <bsd.port.mk>
