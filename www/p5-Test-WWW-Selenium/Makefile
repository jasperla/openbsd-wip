# $OpenBSD$

COMMENT =	test applications using Selenium Remote Control

MODULES =	cpan
DISTNAME =	Test-WWW-Selenium-1.36
CATEGORIES =	devel www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Test-Mock-LWP \
		www/p5-URI

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Exception

.include <bsd.port.mk>
