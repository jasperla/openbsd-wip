# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		module install extention githubmeta

DISTNAME =		Module-Install-GithubMeta-0.30
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS +=	devel/p5-Module-Install>=0.85 \
			sysutils/p5-Capture-Tiny>=0.05

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
