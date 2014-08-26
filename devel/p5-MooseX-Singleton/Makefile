# $OpenBSD$

COMMENT =	turn your Moose class into a singleton

MODULES =	cpan
DISTNAME =	MooseX-Singleton-0.29
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Module-Runtime \
		devel/p5-Test-Warn

.include <bsd.port.mk>
