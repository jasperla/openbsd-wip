# $OpenBSD: Makefile,v 1.16 2018/01/22 21:42:27 kili Exp $

COMMENT =		A fully compliant Haskell 98 lexer

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		haskell-lexer-1.0.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1drChWRMvNxE3y4irvVxwM

.include <bsd.port.mk>
