# $OpenBSD$

COMMENT =	complete OS testing in a box via autotest

MODULES =	cpan
DISTNAME =	Tapper-TestSuite-AutoTest-4.1.2
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-YAML-Syck
#devel/py-autotest

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
