# $OpenBSD: Makefile,v 1.15 2018/01/22 22:01:42 kili Exp $

COMMENT =		microlens support for Reader/Writer/State from mtl

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		microlens-mtl-0.1.11.1
REVISION =              1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6PhdRYHL4kr1C6lGrMWNuQ

BUILD_DEPENDS+=		devel/hs-microlens>=0.4,<0.5 \
			devel/hs-mtl>=2.0.1,<2.3 \
			devel/hs-transformers-compat>=0.4,<1

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
