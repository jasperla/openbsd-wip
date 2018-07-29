# $OpenBSD: Makefile,v 1.15 2018/01/22 21:43:45 kili Exp $

COMMENT=		Type definitions for Universally Unique Identifiers

DISTNAME=		uuid-types-1.0.3
REVISION=		1
CATEGORIES=		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS=		devel/hs-text \
			devel/hs-hashable \
			devel/hs-random

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FIpcrdZ1A2W7hy4rij87ad

.include <bsd.port.mk>
