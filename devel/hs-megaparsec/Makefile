# $OpenBSD: Makefile,v 1.26 2018/01/22 21:42:27 kili Exp $

COMMENT =		Monadic parser combinators

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		megaparsec-6.5.0
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	89cgwzujQbAHhnJkjHAeb3

BUILD_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<1.3 \
			devel/hs-case-insensitive \
			devel/hs-parser-combinators>=0.4,<1.0 \
			devel/hs-scientific>=0.3.1,<0.4

.include <bsd.port.mk>
