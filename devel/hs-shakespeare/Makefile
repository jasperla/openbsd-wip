# $OpenBSD: Makefile,v 1.4 2018/01/22 21:42:27 kili Exp $

COMMENT =		A toolkit for making compile-time interpolated templates

DISTNAME =		shakespeare-2.0.15
REVISION =		1
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HnndBe2NMjPIGVkewgHyGO

BUILD_DEPENDS =		devel/hs-aeson \
			devel/hs-exceptions \
			devel/hs-parsec \
			devel/hs-scientific \
			devel/hs-text \
			devel/hs-unordered-containers \
			devel/hs-vector \
			devel/hs-blaze-html

.include <bsd.port.mk>
