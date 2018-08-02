# $OpenBSD: Makefile,v 1.4 2018/01/22 21:42:27 kili Exp $

COMMENT =		tagged DFA regex engine

DISTNAME =		regex-tdfa-1.2.3.1
REVISION =		1
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2FceaKwuiFoHVo4o2YokKQ

BUILD_DEPENDS =		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-regex-base>=0.93.1

.include <bsd.port.mk>
