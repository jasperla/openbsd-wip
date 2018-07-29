# $OpenBSD: Makefile,v 1.15 2018/01/22 21:43:45 kili Exp $

COMMENT=		Compatibile module for time-format locale

DISTNAME=		time-locale-compat-0.1.1.4
REVISION=		1
CATEGORIES=		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS=		devel/hs-old-locale

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FqzYYa9EZnWKlCa8Hk2yZO

.include <bsd.port.mk>
