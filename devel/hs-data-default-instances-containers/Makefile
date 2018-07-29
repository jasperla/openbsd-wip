# $OpenBSD: Makefile,v 1.15 2018/01/22 21:40:32 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-instances-containers-0.0.1
CATEGORIES=		devel
REVISION=		1

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A7WE5ZxkyD2DXghs3tnK2n

BUILD_DEPENDS =		devel/hs-dlist \
			devel/hs-old-locale

.include <bsd.port.mk>
