# $OpenBSD$

COMMENT =	precondition producers (base class)

MODULES =	cpan
DISTNAME =	Tapper-Producer-4.1.3
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-aliased \
		devel/p5-Moose \
		devel/p5-Try-Tiny \
		devel/p5-YAML \
		security/p5-AAAA-Crypt-DH \
		www/p5-Tapper-Config

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
