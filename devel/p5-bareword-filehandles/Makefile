# $OpenBSD$

COMMENT =	disables bareword filehandles

MODULES =	cpan
DISTNAME =	bareword-filehandles-0.003
CATEGORIES =	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

CPAN_AUTHOR =	ILMARI

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Lexical-SealRequireHints

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-ExtUtils-Depends \
		devel/p5-Lexical-SealRequireHints

.include <bsd.port.mk>
