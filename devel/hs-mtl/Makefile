# $OpenBSD: Makefile,v 1.16 2018/01/22 21:42:27 kili Exp $

COMMENT =		monad classes using functional dependencies

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		mtl-2.2.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/hs-transformers

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	L9xXSHNcnHK5lB15ncBkle

.include <bsd.port.mk>
