# $OpenBSD: Makefile,v 1.18 2018/01/22 21:48:45 kili Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.12
REVISION =		2
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KEpRSCZufm0GzFMeHhUopJ

BUILD_DEPENDS +=	devel/hs-text

.include <bsd.port.mk>
