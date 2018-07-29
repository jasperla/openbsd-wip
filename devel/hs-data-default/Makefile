# $OpenBSD: Makefile,v 1.15 2018/01/22 21:40:32 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.7.1.1
CATEGORIES=		devel
REVISION=		1

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HxP9sk0JsrKFuLVc9OIluX

BUILD_DEPENDS =		devel/hs-data-default-class \
			devel/hs-data-default-instances-dlist \
			devel/hs-data-default-instances-containers \
			devel/hs-data-default-instances-old-locale

.include <bsd.port.mk>
