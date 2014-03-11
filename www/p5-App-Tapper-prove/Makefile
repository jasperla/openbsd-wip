# $OpenBSD $

COMMENT =	alternative 'prove' which reports results to Tapper

MODULES =	cpan
DISTNAME =	App-Tapper-prove-0.002
CATEGORIES =	www

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl 5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Test-MockModule \
		devel/p5-TAP-Harness-Archive \
		devel/p5-Test-Deep \
		devel/p5-Test-MockModule \
		devel/p5-YAML-XS

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
