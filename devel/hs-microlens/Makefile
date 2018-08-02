# $OpenBSD: Makefile,v 1.15 2018/01/22 22:01:42 kili Exp $

COMMENT =		A tiny lens library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		microlens-0.4.9.1
REVISION =              1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IRFllCYqzPl63vQZhkWyLY

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
