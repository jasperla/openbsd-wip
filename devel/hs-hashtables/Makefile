# $OpenBSD: Makefile,v 1.15 2018/01/22 22:01:42 kili Exp $

COMMENT =		Mutable hash tables in the ST monad

DISTNAME =		hashtables-1.2.3.1
REVISION =              1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	F28Y6e0XBbZKBrltUqtod9

BUILD_DEPENDS =		devel/hs-hashable \
			devel/hs-vector

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
