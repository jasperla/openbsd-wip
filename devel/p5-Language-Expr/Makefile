# $OpenBSD$

COMMENT =	simple minilanguage for use in expression

MODULES =	cpan
DISTNAME =	Language-Expr-0.21
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS =	devel/p5-Regexp-Grammars \
		devel/p5-UUID-Tiny

RUN_DEPENDS =	${BUILD_DEPENDS}

TEST_DEPENDS =	devel/p5-Data-Clone \
		devel/p5-Data-Rmap

.include <bsd.port.mk>
