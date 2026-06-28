COMMENT=		ZNC module for client specific buffers

GH_ACCOUNT=		CyberShadow
GH_PROJECT=		znc-clientbuffer
GH_TAGNAME=		v1.0.53

CATEGORIES=		net
HOMEPAGE=		http://wiki.znc.in/Clientbuffer

# Apache-2.0
PERMIT_PACKAGE=		Yes

WANTLIB=		c++ c++abi crypto m ssl pthread icuuc icudata

# the build itself uses make, which in return calls znc-buildmod,
# which requires cmake
BUILD_DEPENDS+=		devel/cmake/core \
			net/znc \
			textproc/icu4c

RUN_DEPENDS+=		net/znc \
			textproc/icu4c

FAKE_FLAGS+=		PREFIX=${PREFIX}

.include <bsd.port.mk>
