
COMMENT =		HTTP client package with conduit interface and HTTPS support.

DISTNAME =		http-conduit-2.3.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9o41LGJzyCgJ0lCiyfjmbk

BUILD_DEPENDS =		devel/hs-aeson>=0.8 \
			devel/hs-conduit>=1.2 \
			devel/hs-conduit-extra>=1.1 \
			devel/hs-http-client>=0.5.13,<0.6 \
			devel/hs-http-client-tls \
			devel/hs-http-types>=0.7 \
			devel/hs-mtl \
			devel/hs-resourcet>=1.1 \
			devel/hs-unliftio-core \
			devel/hs-void>=0.5.5

.include <bsd.port.mk>
