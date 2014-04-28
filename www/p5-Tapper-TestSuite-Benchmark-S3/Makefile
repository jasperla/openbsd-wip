# $OpenBSD$

COMMENT =	measure suspend/resume cycle with external Arduino box

MODULES =	cpan
DISTNAME =	Tapper-TestSuite-Benchmark-S3-4.1.1
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Data-YAML \
		devel/p5-Sub-Exporter \
		devel/p5-Test-TAPv13 \
		devel/p5-Test-WWW-Mechanize \
		devel/p5-YAML-Syck \
		www/p5-Tapper-Base

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
