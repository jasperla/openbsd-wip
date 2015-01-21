# $OpenBSD$

COMMENT =		interface to the ISAAC PRNG algorithm

SHARED_ONLY =		yes
MODULES =		cpan
DISTNAME =		Math-Random-ISAAC-XS-1.004
CATEGORIES =		math

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# CC0 License
PERMIT_PACKAGE_CDROM =	Yes

WANT_LIBS +=		c

CONFIGURE_STYLE =	modbuild

TEST_DEPENDS =		devel/p5-Test-LeakTrace \
			devel/p5-Test-NoWarnings
#Statistics::Test::RandomWalk

.include <bsd.port.mk>
