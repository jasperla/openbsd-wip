# $OpenBSD$

COMMENT =	Tapper specific TAP handling

MODULES =	cpan
DISTNAME =	Tapper-TAP-Harness-4.1.1
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Directory-Scratch \
		devel/p5-File-Slurp \
		devel/p5-IO-String \
		devel/p5-IO-stringy \
		devel/p5-Moose \
		devel/p5-TAP-DOM \
		devel/p5-Test-Deep \
		devel/p5-YAML-Tiny

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	www/p5-TAP-Formatter-HTML

.include <bsd.port.mk>
