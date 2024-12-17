COMMENT =	system information tool written in c
CATEGORIES =	sysutils misc

GH_ACCOUNT =	fastfetch-cli
GH_PROJECT =	fastfetch
GH_TAGNAME =	2.31.0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c kvm m pthread

MODULES =		devel/cmake \
			lang/python

USE_LIBTOOL =		gnu

RUN_DEPENDS =		misc/hwdata

COMPILER =		base-clang

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DSET_TWEAK=OFF \
			-DBUILD_TESTS=ON

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
