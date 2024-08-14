COMMENT =	reimplementation of Gothic 2 Notr

PKGNAME =	${DISTNAME:L}

DIST_TUPLE +=	github Try OpenGothic v0.80 .
DIST_TUPLE +=	github Try Tempest 46c24d6bc0ac070ba48dbf2a11b51533f6596eeb \
		lib/Tempest
DIST_TUPLE +=	github bulletphysics bullet3 \
		ebe1916b90acae8b13cd8c6b637d8327cdc64e94 lib/bullet3
DIST_TUPLE +=	github schellingb TinySoundFont \
		d4ffcdc8a34d3f61f22e4b283b4c100f5adf4b82 lib/TinySoundFont

# can't use DIST_TUPLE for phoenix because extracts to non-standard location
PHOENIX =	ad4a35401d74ecc11fff3137b14589e48f114572
SITES.phoenix =	https://github.com/GothicKit/phoenix/archive/
DISTFILES.phoenix = GothicKit-phoenix-${PHOENIX}{${PHOENIX}}${EXTRACT_SUFX}

# The following are secondary dependencies of lib/phoenix
DIST_TUPLE +=	github doctest doctest v2.4.9 lib/phoenix/vendor/doctest
DIST_TUPLE +=	github mandreyel mio 3f86a95c0784d73ce6815237ec33ed25f233b643 \
		lib/phoenix/vendor/mio
DIST_TUPLE +=	github g-truc glm 0.9.9.8 lib/phoenix/vendor/glm
DIST_TUPLE +=	github lmichaelis phoenix-libsquish \
		cc82beff55210816e1bd531fc6057203dc309807 \
		lib/phoenix/vendor/libsquish

SHARED_LIBS +=  squish                    0.0 # 0.0

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcursor c m vulkan

# gnu++20
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	graphics/vulkan-headers
LIB_DEPENDS =	graphics/vulkan-loader

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} -lopenal"

CXXFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

post-extract:
	mv ${WRKDIR}/ZenKit-${PHOENIX}/* ${WRKSRC}/lib/phoenix/

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/opengothic/Gothic2Notr.sh \
		${PREFIX}/bin/
	${INSTALL_DATA}	${WRKBUILD}/opengothic/libsquish.so.0.0 \
		${PREFIX}/lib/

.include <bsd.port.mk>
