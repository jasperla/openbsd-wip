# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		module install extention converts pod to readme

DISTNAME =		Module-Install-ReadmeFromPod-0.22
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS +=	devel/p5-Module-Install>=1.0 \
			sysutils/p5-Capture-Tiny>=0.05

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
