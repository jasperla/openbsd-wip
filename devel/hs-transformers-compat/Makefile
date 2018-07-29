# $OpenBSD: Makefile,v 1.6 2018/01/22 21:43:45 kili Exp $

COMMENT =		compat lib exposing transformers 0.3 and 0.4 types

DISTNAME =		transformers-compat-0.6.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/hs-mtl \
			devel/hs-transformers

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DskX7DnN6L5FxkJ0rP9Sus

.include <bsd.port.mk>
