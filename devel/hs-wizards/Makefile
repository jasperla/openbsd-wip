# $OpenBSD: Makefile,v 1.18 2018/01/22 21:40:32 kili Exp $

COMMENT=		Generic library for interrogative user interfaces

DISTNAME=		wizards-1.0.2
REVISION=		2
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS=		devel/hs-mtl>=2.0,<2.3 \
			devel/hs-transformers>=0.1,<0.6 \
			devel/hs-control-monad-free>=0.5,<0.7

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8ez6im1ArabG5qg8XRf5G7

.include <bsd.port.mk>
