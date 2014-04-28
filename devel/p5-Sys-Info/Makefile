# $OpenBSD$

COMMENT =	fetch information from the host system

MODULES =	cpan
DISTNAME =	Sys-Info-0.78
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS = ${RUN_DEPENDS}

RUN_DEPENDS =	devel/p5-Sys-Info-Base \
		devel/p5-Sys-Info-Driver-BSD \
		devel/p5-Test-Sys-Info

#TEST_DEPENDS =	devel/p5-BSD-Sysctl

.include <bsd.port.mk>
