# $OpenBSD$

COMMENT =	tiny replacement for Module::Build

MODULES =	cpan
DISTNAME =	Module-Build-Tiny-0.012
CATEGORIES =	devel

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/p5-ExtUtils-BuildRC \
		devel/p5-ExtUtils-Config \
		devel/p5-ExtUtils-InstallPaths \
		devel/p5-File-Find-Rule \
		devel/p5-File-Slurp \
		converters/p5-JSON

TEST_DEPENDS =	devel/p5-File-pushd \
		devel/p5-Test-Exception  \
		sysutils/p5-Capture-Tiny

CONFIGURE_STYLE =    modbuild

.include <bsd.port.mk>
