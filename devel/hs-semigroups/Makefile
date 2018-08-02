# $OpenBSD: Makefile,v 1.12 2018/01/22 21:43:45 kili Exp $

COMMENT =		Haskell 98 semigroups

DISTNAME =		semigroups-0.18.5
REVISION =		1
CATEGORIES =		devel math

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3QxD8rSjv63Eo1kJosRlin

BUILD_DEPENDS +=	devel/hs-nats>=0.1

.include <bsd.port.mk>
