# $OpenBSD$

COMMENT =	declare class attributes Moose-style

MODULES =	cpan
DISTNAME =	MooseX-ClassAttribute-0.27
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Artistic License 2.0
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-namespace-autoclean \
		devel/p5-namespace-clean \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-MooseX-AttributeHelpers \
		devel/p5-MooseX-Role-Parameterized \
		devel/p5-Module-Runtime

.include <bsd.port.mk>
