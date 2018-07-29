# $OpenBSD: Makefile,v 1.16 2018/01/22 21:42:27 kili Exp $

COMMENT =		Backported Control.Monad.Except

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		mtl-compat-0.2.1.3
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/hs-mtl

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage register

MODGHC_PACKAGE_KEY =	L9xXSHNcnHK5lB15ncBkle

post-build:
	mkdir -p /usr/ports/pobj/hs-${DISTNAME}/fake-amd64/usr/local/lib/ghc/${DISTNAME}

.include <bsd.port.mk>
