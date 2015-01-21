# OpenBSD$

COMMENT =		encrypted (and more) session data with integrity

MODULES =		cpan
DISTNAME =		Session-Storage-Secure-0.010
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

CPAN_AUTHOR =		DAGOLDEN

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		security/p5-Crypt-CBC \
			security/p5-Crypt-Rijndael \
			security/p5-Crypt-URandom \
			math/p5-Math-Random-ISAAC-XS \
			devel/p5-Moo \
			devel/p5-MooX-Types-MooseLike>=0.16 \
			devel/p5-namespace-clean \
			devel/p5-Sereal-Decoder \
			devel/p5-Sereal-Encoder \
			devel/p5-String-Compare-ConstantTime

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Number-Tolerant
 
.include <bsd.port.mk>
