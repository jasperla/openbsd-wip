# $OpenBSD: Makefile,v 1.18 2018/01/22 21:40:32 kili Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-html-0.9.1.1
REVISION=		1
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	25oPaF2yn7BvfpNi1tnVD

BUILD_DEPENDS =		devel/hs-text \
			devel/hs-blaze-markup \
			devel/hs-blaze-builder

.include <bsd.port.mk>
