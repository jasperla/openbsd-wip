
COMMENT=		Core data types, parsers and functionality for hledger

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME=		hledger-lib-1.10
REVISION=               2
CATEGORIES=		devel

HOMEPAGE=		https://github.com/simonmichael/hledger-lib

# BSD3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv m

MODULES=		lang/ghc
MODGHC_BUILD=		cabal hackage haddock register

LIB_DEPENDS=		converters/libiconv

BUILD_DEPENDS=		devel/hs-ansi-terminal \
			devel/hs-base-compat-batteries \
			devel/hs-blaze-markup \
			devel/hs-cmdargs \
			devel/hs-csv \
                        devel/hs-data-default \
			devel/hs-Decimal \
			devel/hs-extra \
			devel/hs-hashtables \
			devel/hs-HUnit \
			devel/hs-megaparsec \
                        devel/hs-mtl \
                        devel/hs-mtl-compat \
                        devel/hs-old-time \
			devel/hs-parsec \
			devel/hs-parser-combinators \
                        devel/hs-pretty-show \
                        devel/hs-regex-tdfa \
                        devel/hs-safe \
                        devel/hs-semigroups \
			devel/hs-split \
                        devel/hs-tabular \
			devel/hs-text \
                        devel/hs-transformers \
                        devel/hs-uglymemo \
                        devel/hs-utf8-string

.include <bsd.port.mk>
