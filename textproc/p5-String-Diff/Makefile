# $OpenBSD$

COMMENT =	simple diff to String

MODULES =	cpan
DISTNAME =	String-Diff-0.06
CATEGORIES =	textproc

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Algorithm-Diff \
		devel/p5-Test-Base \
		devel/p5-YAML

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	www/p5-HTML-Parser

.include <bsd.port.mk>
