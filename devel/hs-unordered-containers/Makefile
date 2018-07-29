# $OpenBSD: Makefile,v 1.14 2018/01/22 21:43:46 kili Exp $

COMMENT =		efficient hashing-based container types

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		unordered-containers-0.2.9.0
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8cLD8MW1bwF1Ze0IMEHxYR

BUILD_DEPENDS =		devel/hs-hashable>=1.0.1.1

.include <bsd.port.mk>
