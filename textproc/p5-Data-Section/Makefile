# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		read multiple hunks from your data section

DISTNAME =		Data-Section-0.200006
CATEGORIES =		textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS +=		devel/p5-MRO-Compat>=0.09 \
			devel/p5-Sub-Exporter>=0.979
			
BUILD_DEPENDS +=	${RUN_DEPENDS}

TEST_DEPENDS +=		devel/p5-Test-FailWarnings
.include <bsd.port.mk>
