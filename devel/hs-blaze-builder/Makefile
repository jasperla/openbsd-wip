# $OpenBSD: Makefile,v 1.18 2018/01/22 21:40:32 kili Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.4.1.0
REVISION=		2
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CqkRAAJSGiQ47HFgUT5M

BUILD_DEPENDS =		devel/hs-text>=0.10,<1.3

.include <bsd.port.mk>
