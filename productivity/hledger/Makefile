
COMMENT-main =		Command-line interface for the hledger accounting tool
COMMENT-lib =		hledger library

V =			1.10

DISTNAME =		hledger-$V
PKGNAME-main =		${DISTNAME}
PKGNAME-lib =		hs-${DISTNAME}
REVISION =		1
CATEGORIES =		productivity

MULTI_PACKAGES =	-main -lib
WANTLIB-main =		${WANTLIB} c m iconv

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3nw1XPYOwQc9GhJTC1wDBp

LIB_DEPENDS +=		converters/libiconv
BUILD_DEPENDS = 	devel/happy \
			devel/hs-ansi-terminal>=0.6.2.3 \
			devel/hs-base-compat-batteries>=0.10.1,<0.11 \
			devel/hs-cmdargs>=0.10 \
			devel/hs-csv \
			devel/hs-data-default>=0.5 \
			devel/hs-Decimal \
			devel/hs-Diff \
			devel/hs-file-embed>=0.0.10 \
			devel/hs-hashable>=1.2.4 \
			devel/hs-here \
			devel/hs-hledger-lib \
			devel/hs-lucid \
			devel/hs-megaparsec>=6.4.1 \
			devel/hs-mtl \
			devel/hs-mtl-compat \
			devel/hs-old-time \
			devel/hs-parsec>=3 \
			devel/hs-pretty-show>=1.6.4 \
			devel/hs-regex-tdfa \
			devel/hs-safe>=0.2 \
			devel/hs-shakespeare>=2.0.2.2 \
			devel/hs-split>=0.1 \
			devel/hs-tabular>=0.2 \
			devel/hs-temporary \
			devel/hs-text>=0.11 \
			devel/hs-unordered-containers \
			devel/hs-utf8-string>=0.3.5 \
			devel/hs-utility-ht>=0.0.13 \
			devel/hs-wizards>=1.0
BUILD_DEPENDS-lib =	${BUILD_DEPENDS}
BUILD_DEPENDS-main =	${BUILD_DEPENDS-lib} \
			devel/hledger,-lib

.include <bsd.port.mk>
