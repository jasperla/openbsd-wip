# $OpenBSD: Makefile,v 1.16 2018/01/22 21:42:27 kili Exp $

COMMENT =		Tools for working with derived `Show` instances

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		pretty-show-1.7
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/hs-haskell-lexer

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7zKnleQl81IKxVRx4niscz

.include <bsd.port.mk>
