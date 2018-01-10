# $OpenBSD$

COMMENT =	Provide the stuff missing in List::Util

DISTNAME =	List-SomeUtils-0.56

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

BUILD_DEPENDS =	textproc/p5-List-SomeUtils-XS

RUN_DEPENDS =	textproc/p5-List-SomeUtils-XS \
		devel/p5-Module-Implementation

TEST_DEPENDS =	devel/p5-Test-LeakTrace

PKG_ARCH =	*

.include <bsd.port.mk>
