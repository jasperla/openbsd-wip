
COMMENT =		Securely store session data in a client-side cookie.

DISTNAME =		clientsession-0.9.1.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CvpeCChvZVdCKKO2tCDnAq

BUILD_DEPENDS =		devel/hs-base64-bytestring>=0.1.1.1 \
			devel/hs-cereal>=0.3 \
			devel/hs-cipher-aes>=0.1.7 \
			devel/hs-cprng-aes>=0.2 \
			devel/hs-crypto-api>=0.8 \
			devel/hs-crypto-random \
			devel/hs-entropy>=0.2.1 \
			devel/hs-setenv \
			devel/hs-skein \
			devel/hs-tagged>=0.1

.include <bsd.port.mk>
