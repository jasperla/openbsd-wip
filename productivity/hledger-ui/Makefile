
COMMENT =		Curses-style user interface for the hledger accounting tool

DISTNAME =		hledger-ui-1.10.1
REVISION =		2
CATEGORIES =		productivity

PKGNAME =		${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage

WANTLIB=                c iconv m

LIB_DEPENDS =		converters/libiconv
BUILD_DEPENDS =		devel/hs-ansi-terminal>=0.6.2.3 \
			devel/hs-async \
			devel/hs-base-compat-batteries>=0.10.1,<0.11 \
			devel/hs-brick>=0.12 \
			devel/hs-cmdargs>=0.8 \
			devel/hs-data-default \
			devel/hs-fsnotify>=0.2.1.2,<0.4 \
			productivity/hledger,-lib \
			devel/hs-hledger-lib \
			devel/hs-HUnit \
			devel/hs-megaparsec>=6.4.1 \
			devel/hs-microlens>=0.4 \
			devel/hs-microlens-platform>=0.2.3.1 \
			devel/hs-pretty-show>=1.6.4 \
			devel/hs-safe>=0.2 \
			devel/hs-split>=0.1 \
			devel/hs-text>=1.2 \
			devel/hs-text-zipper>=0.4 \
			devel/hs-vector \
			devel/hs-vty>=5.5

.include <bsd.port.mk>
