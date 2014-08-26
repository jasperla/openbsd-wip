# $OpenBSD$

COMMENT =	unified cache handling interface

MODULES =	cpan
DISTNAME =	CHI-0.58
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	converters/p5-JSON \
		devel/p5-Carp-Assert \
		devel/p5-Data-UUID \
		devel/p5-Hash-MoreUtils \
		devel/p5-List-MoreUtils \
		devel/p5-Log-Any \
		devel/p5-MooX-Types-MooseLike \
		devel/p5-MooX-Types-MooseLike-Numeric \
		devel/p5-Task-Weaken \
		devel/p5-Test-Class \
		devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Warn \
		devel/p5-Test-Weaken \
		devel/p5-Time-TimeDate \
		devel/p5-Time-Duration \
		devel/p5-Time-Duration-Parse \
		devel/p5-Try-Tiny \
		security/p5-Digest-JHash \
		textproc/p5-String-RewritePrefix

#BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Import-Into \
		devel/p5-Moo \
		devel/p5-Class-Method-Modifiers

.include <bsd.port.mk>
