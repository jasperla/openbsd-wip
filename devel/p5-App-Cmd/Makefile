# $OpenBSD$

COMMENT =	set of tools to write CLI programs

MODULES =	cpan
DISTNAME =	App-Cmd-0.322
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Data-OptList \
		devel/p5-Getopt-Long \
		devel/p5-Getopt-Long-Descriptive \
		devel/p5-IO-TieCombine \
		devel/p5-Sub-Exporter \
		devel/p5-Sub-Install \
		devel/p5-Test-Fatal \
		sysutils/p5-Capture-Tiny \
		textproc/p5-String-RewritePrefix

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
