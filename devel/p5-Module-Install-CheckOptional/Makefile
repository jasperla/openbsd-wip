# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		module install extention CheckOptional

DISTNAME =		Module-Install-CheckOptional-0.1101
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		
BUILD_DEPENDS +=	${RUN_DEPENDS} \
			devel/p5-Module-Install \
			devel/p5-IO-CaptureOutput

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
