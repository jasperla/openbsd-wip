# $OpenBSD$

COMMENT =	BSD driver for Sys::Info

MODULES =	cpan
DISTNAME =	Sys-Info-Driver-BSD-0.7801
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/p5-Unix-Processors \
		devel/p5-Sys-Info-Base \
		devel/p5-Test-Sys-Info \
#		devel/p5-BSD-Sysctl

.include <bsd.port.mk>
