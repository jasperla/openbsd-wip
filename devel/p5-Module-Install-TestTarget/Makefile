# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		module install extention testtarget

DISTNAME =		Module-Install-TestTarget-0.19
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS +=	devel/p5-Module-Install>=1.00 \
			devel/p5-Test-Requires

#MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
