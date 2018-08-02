# $OpenBSD: Makefile,v 1.18 2018/01/22 21:40:32 kili Exp $

COMMENT=		Extra functions I use

DISTNAME=		extra-1.6.8
REVISION=		1
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/hs-clock

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	84f5CjUPNFBISJzUNl9auH

.include <bsd.port.mk>
