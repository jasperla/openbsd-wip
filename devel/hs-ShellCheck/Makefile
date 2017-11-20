# $OpenBSD$

COMMENT =		shell script analysis tool

DISTNAME =		ShellCheck-0.4.6
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7idyMrgdEmYIkEyn8OLkK7

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-QuickCheck \
			devel/hs-regex-tdfa \
			textproc/hs-json
BUILD_DEPENDS +=	${RUN_DEPENDS}

# Needs --enable-test, which will probably set by ghc.port.mk soon
# (when I have some numbers about build times).
NO_TEST =		Yes

.include <bsd.port.mk>
