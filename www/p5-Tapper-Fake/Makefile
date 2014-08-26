# $OpenBSD$

COMMENT =	fake modules for testing the automation layer

MODULES =	cpan
DISTNAME =	Tapper-Fake-4.1.1
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-common-sense \
		devel/p5-Class-C3 \
		devel/p5-Devel-Backtrace \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-MRO-Compat \
		devel/p5-Moose \
		devel/p5-YAML-Syck \
		www/p5-Tapper-Base \
		www/p5-Tapper-Config \
		www/p5-Tapper-MCP \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp \
		devel/p5-Class-C3 \
		devel/p5-MooseX-Traits \
		net/p5-Net-SSH

.include <bsd.port.mk>
