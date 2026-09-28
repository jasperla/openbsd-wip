COMMENT =	self-hosted game stream host for Moonlight

V =		v2026.914.233613
PKGNAME =	${DISTNAME:L}

DIST_TUPLE += github LizardByte Sunshine ${V} .
DIST_TUPLE += github flatpak flatpak-builder-tools de2225a6dee4818c1339b3cdbf29f90c471fcb7e packaging/linux/flatpak/deps/flatpak-builder-tools
DIST_TUPLE += github LizardByte build-deps a1fe2841cbc0d8c4501a1006d2d1cb88f219cc8c third-party/build-deps
DIST_TUPLE += github LizardByte doxyconfig 419127bad87f49b2d45fa957ea7302abbb49c01f third-party/doxyconfig
DIST_TUPLE += github Dav1dde glad 73db193f853e2ee079bf3ca8a64aa2eaf6459043 third-party/glad
DIST_TUPLE += github LizardByte libdisplaydevice 6e9722f89103320c948dc1199066c9e17a69e88a third-party/libdisplaydevice
DIST_TUPLE += github LizardByte libvirtualhid 53e1a949fc0784af716b782ddfa6c647cafd1f05 third-party/libvirtualhid
DIST_TUPLE += github LizardByte lizardbyte-common f9d91e1d29b7473f58e43acde4579da4e56c4abe third-party/lizardbyte-common
DIST_TUPLE += github moonlight-stream moonlight-common-c 62e066388f1a1b133e0bee947b9a374311a3354b third-party/moonlight-common-c
DIST_TUPLE += github NVIDIA nvapi cd6918f60b3c9a0476fdfe7e89bb32330602049d third-party/nvapi
DIST_TUPLE += github KDE plasma-wayland-protocols 382dfabda886d3f2f5c067b22e5a22376685ba78 third-party/plasma-wayland-protocols
DIST_TUPLE += github LizardByte-infrastructure Simple-Web-Server 546895a93a29062bb178367b46c7afb72da9881e third-party/Simple-Web-Server
DIST_TUPLE += github michaeltyson TPCircularBuffer cc520397504bb72bc6df79ff03eb72988a6dc50d third-party/TPCircularBuffer
DIST_TUPLE += github LizardByte tray c329d9fd0d39dfb47f0f2fb5467e1db2e8a1d623 third-party/tray
DIST_TUPLE += github LizardByte Virtual-Gamepad-Emulation-Client 8d71f6740ffff4671cdadbca255ce528e3cd3fef third-party/ViGEmClient
DIST_TUPLE += github LizardByte-infrastructure wayland-protocols ee78491a237eaff9389a0ccf8680521d074407d3 third-party/wayland-protocols
DIST_TUPLE += github LizardByte-infrastructure wlr-protocols bf4fc79abc359eea5a0edec0ac6d4a2b2955f82a third-party/wlr-protocols

# second order DIST_TUPLE submodules
DIST_TUPLE += github cgutman enet aca87840b57f045a1f7f9299e4b1b9b8e2a5e2f1 third-party/moonlight-common-c/enet
DIST_TUPLE += github sleepybishop nanors b1e3c22ca0cdc0bb83e3cd6ed1a2fc77869ed99a third-party/moonlight-common-c/nanors

#SHARED_LIBS =	???	0.0

CATEGORIES =	games

HOMEPAGE =	https://app.lizardbyte.dev/Sunshine/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3.0+
PERMIT_PACKAGE =	Yes

# ffmpeg libraries (libavcodec etc.) are linked statically
#WANTLIB =		???

# XXX: TBD
# Standard for C++ ports:
#COMPILER =		base-clang ports-gcc base-gcc
# Standard for C++11 or newer:
#COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
MODCMAKE_LDFLAGS =	${LDFLAGS}

# XXX: compare and complete *_DEPENDS as needed:
# per docs/building.md: opus, pulseaudio, doxygen, git, qt6-base, curl,
#	graphviz, qt6-svg, wayland, libva, miniupnpc, openssl, bash,
#	npm-node
#
# from configure stage: boost (1.89), nlohmann-json, libevdev-openbsd
#	pipewire, node (npm)

BUILD_DEPENDS =	lang/node
#RUN_DEPENDS =		???
LIB_DEPENDS =	devel/boost \
		textproc/nlohmann-json \
		wayland/libevdev-openbsd \
		wayland/wayland-protocols
#TEST_DEPENDS =		???

# XXX: add -DNPM_OFFLINE=ON when ready
CONFIGURE_ARGS =	-DBOOST_USE_STATIC=OFF \
			-DCUDA_FAIL_ON_MISSING=OFF \
			-DFFMPEG_PREPARED_BINARIES=${PREFIX} \
			-DSUNSHINE_ENABLE_CUDA=OFF \
			-DSUNSHINE_SYSTEM_VULKAN_HEADERS=ON \
			-DSUNSHINE_SYSTEM_WAYLAND_PROTOCOLS=ON

# XXX: review; mostly disabled to simplify building early on
CONFIGURE_ARGS +=	-DBUILD_DOCS=OFF \
			-DBUILD_TESTS=OFF

CONFIGURE_ENV =		BRANCH=master \
			BUILD_VERSION=${V}

# XXX: TBD
#NO_TEST =		Yes

CFLAGS +=	-I${X11BASE}/include
CXXFLAGS +=	-I${X11BASE}/include
LDFLAGS +=	-L${X11BASE}/lib

# XXX: currently for the npm invocation; later set
PORTHOME =	${WRKDIR}/porthome

post-extract:
	mkdir ${WRKDIR}/porthome

.include <bsd.port.mk>
