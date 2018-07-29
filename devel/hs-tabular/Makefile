# $OpenBSD: Makefile,v 1.18 2018/01/22 21:40:32 kili Exp $

COMMENT=		Two-dimensional data tables with rendering functions

DISTNAME=		tabular-0.2.2.7
REVISION=		1
CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5uu4SlMozB056IuCnqgXrT

BUILD_DEPENDS =		devel/hs-mtl>=1,<2.3 \
			devel/hs-csv \
			devel/hs-html>=1,<2

.include <bsd.port.mk>
