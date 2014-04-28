# $OpenBSD$

COMMENT =	TAP Test Harness output delegate for html output

MODULES =	cpan
DISTNAME =	TAP-Formatter-HTML-0.11
CATEGORIES =	devel www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-accessors \
		textproc/p5-Template \
		www/p5-URI

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	www/p5-Test-WWW-Selenium

FAKE_FLAGS =	PREFIX=""

.include <bsd.port.mk>
