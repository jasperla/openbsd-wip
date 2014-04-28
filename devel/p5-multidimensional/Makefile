# $OpenBSD$

COMMENT =	disables multidimensional array emulation

MODULES =	cpan
DISTNAME =	multidimensional-0.011
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

CPAN_AUTHOR =	ILMARI

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-B-Hooks-OP-Check \
		devel/p5-ExtUtils-Depends \
		devel/p5-Lexical-SealRequireHints

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
