# $OpenBSD: Makefile,v 1.8 2018/01/22 21:42:27 kili Exp $

COMMENT =		monad morphisms

DISTNAME =		mmorph-1.1.2
REVISION =		3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	31xc9E84pcxR0gY8j7Q4r

BUILD_DEPENDS =		devel/hs-mtl>=2.1,<2.3 \
			devel/hs-transformers \
			devel/hs-transformers-compat>=0.3,<0.7

.include <bsd.port.mk>
