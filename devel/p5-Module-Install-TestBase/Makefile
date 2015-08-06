# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		module install extention testbase

DISTNAME =		Module-Install-TestBase-0.86
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS +=		devel/p5-Test-Base>=0.86 \
			devel/p5-Module-Install>=1.10
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
