# $OpenBSD$

COMMENT =	common functionality for remote automation libs

MODULES =	cpan
DISTNAME =	Tapper-Remote-4.1.1
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Log-Log4perl \
		devel/p5-Test-MockModule \
		devel/p5-Moose \
		devel/p5-YAML-Syck \
		net/p5-Net-TFTP \
		www/p5-Tapper-Base \
		www/p5-URI

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
