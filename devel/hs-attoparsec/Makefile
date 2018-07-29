# $OpenBSD: Makefile,v 1.26 2018/01/22 21:42:27 kili Exp $

COMMENT =		Fast combinator parsing for bytestrings and text

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		attoparsec-0.13.2.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3u0RtBpy2Zg2qAzdR8W16T

BUILD_DEPENDS =		devel/hs-scientific \
			devel/hs-text

.include <bsd.port.mk>
