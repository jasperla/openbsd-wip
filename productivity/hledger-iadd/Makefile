
COMMENT =		A terminal UI as drop-in replacement for hledger add

DISTNAME =		hledger-iadd-1.3.5
REVISION =		2
CATEGORIES =		productivity

PKGNAME =		${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	AXd0ftwso6r7pKt1xQ0Cth

BUILD_DEPENDS =		devel/hs-brick>=0.17 \
			devel/hs-free>=4.12.4 \
			devel/hs-hledger-lib>=1.5,<2.0 \
			devel/hs-megaparsec>=5.0,<6.6 \
			devel/hs-microlens \
			devel/hs-microlens-th \
			devel/hs-optparse-applicative \
			devel/hs-semigroups>=0.5.0 \
			devel/hs-text \
			devel/hs-text-zipper>=0.10 \
			devel/hs-unordered-containers \
			devel/hs-vector \
			devel/hs-vty>=5.4 \
			devel/hs-xdg-basedir

.include <bsd.port.mk>
