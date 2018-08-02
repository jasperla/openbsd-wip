# $OpenBSD: Makefile,v 1.23 2018/01/22 21:42:27 kili Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-base-0.93.2
REVISION =		13
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HGmcbUBi8uG3eGKgQ2lP9X

BUILD_DEPENDS =		devel/hs-mtl

.include <bsd.port.mk>
