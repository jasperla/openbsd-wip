# $OpenBSD: Makefile,v 1.15 2018/01/22 22:01:42 kili Exp $

COMMENT =		Automatic generation of record lenses for microlens

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		microlens-th-0.4.2.1
REVISION =              1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9o41LGJzyCgJ0lCiyfjmbk

BUILD_DEPENDS =		devel/hs-microlens>=0.4.0,<0.5 \
			devel/hs-th-abstraction>=0.2.1,<0.3

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
