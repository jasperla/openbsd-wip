# $OpenBSD$

COMMENT =	program run control for test program automation

MODULES =	cpan
DISTNAME =	Tapper-PRC-4.1.2
CATEGORIES =	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Log-Log4perl \
		devel/p5-Moose \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-YAML \
		devel/p5-YAML-Syck \
		net/p5-Net-TFTP \
		www/p5-Tapper-Base \
		www/p5-Tapper-Config \
		www/p5-Tapper-Remote

TEST_DEPENDS =	devel/p5-Try-Tiny \
		devel/p5-Test-Deep \
		devel/p5-Test-MockModule \
		devel/p5-Test-Simple \
		www/p5-Tapper-Config

.include <bsd.port.mk>
