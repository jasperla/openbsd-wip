COMMENT =	self-hosted game stream host for Moonlight

V =		v2026.914.233613
PKGNAME =	${DISTNAME:L}

DIST_TUPLE =	github LizardByte Sunshine ${V} .

# skip web-ui build (require wasm hack or native build, rolldown & lightningcss)
DISTFILES.webui = sunshine-${V:S/^v//}-1-x86_64.pkg.tar.zst
SITES.webui =	https://github.com/LizardByte/Sunshine/releases/download/${V}/
EXTRACT_CASES+=	${DISTFILES.webui}) \
	zstdcat <${FULLDISTDIR}/$$archive | \
	${TAR} -xf - -- usr/share/sunshine/web ;;

# Submodules pinned by Sunshine, exceptions are:
# - nvapi and ViGEmClient: Windows APIs and virtual gamepads.
# - TPCircularBuffer: macOS audio buffering.
# - build-deps/third-party/FFmpeg/*:
#   use graphics/ffmpeg and its configured sources instead of bundled FFmpeg.
#   use the system Vulkan headers and loader.
# - doxyconfig and doxyconfig/doxygen-awesome-css: BUILD_DOCS=OFF.
# - wayland-protocols: SUNSHINE_SYSTEM_WAYLAND_PROTOCOLS=ON.

# build-deps, LizardByte dependency version definitions, MIT
# CMakeLists.txt still requires its package-lock.cmake.
DIST_TUPLE+=	github LizardByte build-deps \
		a1fe2841cbc0d8c4501a1006d2d1cb88f219cc8c \
		third-party/build-deps

# glad, graphics API loader generator, MIT and Apache-2.0
DIST_TUPLE+=	github Dav1dde glad \
		73db193f853e2ee079bf3ca8a64aa2eaf6459043 \
		third-party/glad

# lizardbyte-common, shared C++ helpers, MIT
DIST_TUPLE+=	github LizardByte lizardbyte-common \
		f9d91e1d29b7473f58e43acde4579da4e56c4abe \
		third-party/lizardbyte-common
# googletest, C++ test framework, BSD-3-Clause
DIST_TUPLE+=	github google googletest \
		f8d7d77c06936315286eb55f8de22cd23c188571 \
		third-party/lizardbyte-common/third-party/googletest

# libdisplaydevice, display configuration library, MIT
DIST_TUPLE+=	github LizardByte libdisplaydevice \
		6e9722f89103320c948dc1199066c9e17a69e88a \
		third-party/libdisplaydevice

# libvirtualhid, virtual input devices, MIT (Windows driver/broker: LB-SAL-1.0)
DIST_TUPLE+=	github LizardByte libvirtualhid \
		53e1a949fc0784af716b782ddfa6c647cafd1f05 \
		third-party/libvirtualhid

# moonlight-common-c, GameStream protocol helpers, GPLv3
DIST_TUPLE+=	github moonlight-stream moonlight-common-c \
		62e066388f1a1b133e0bee947b9a374311a3354b \
		third-party/moonlight-common-c
# ENet, reliable UDP networking, MIT
DIST_TUPLE+=	github cgutman enet \
		aca87840b57f045a1f7f9299e4b1b9b8e2a5e2f1 \
		third-party/moonlight-common-c/enet
# nanors, Reed-Solomon error correction, MIT
DIST_TUPLE+=	github sleepybishop nanors \
		b1e3c22ca0cdc0bb83e3cd6ed1a2fc77869ed99a \
		third-party/moonlight-common-c/nanors

# Simple-Web-Server, HTTP and HTTPS server, MIT
DIST_TUPLE+=	github LizardByte-infrastructure Simple-Web-Server \
		546895a93a29062bb178367b46c7afb72da9881e \
		third-party/Simple-Web-Server

# tray, system tray library, MIT
DIST_TUPLE+=	github LizardByte tray \
		c329d9fd0d39dfb47f0f2fb5467e1db2e8a1d623 \
		third-party/tray

# plasma-wayland-protocols, KDE Wayland protocols, LGPLv2.1+, BSD, MIT, CC0
DIST_TUPLE+=	github KDE plasma-wayland-protocols \
		382dfabda886d3f2f5c067b22e5a22376685ba78 \
		third-party/plasma-wayland-protocols

# wlr-protocols, wlroots protocol extensions, MIT
DIST_TUPLE+=	github LizardByte-infrastructure wlr-protocols \
		bf4fc79abc359eea5a0edec0ac6d4a2b2955f82a \
		third-party/wlr-protocols

CATEGORIES =	games

HOMEPAGE =	https://app.lizardbyte.dev/Sunshine/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3.0+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt6Core Qt6Gui
WANTLIB += Qt6Svg Qt6Widgets SM X11 Xext avcodec avutil
WANTLIB += boost_atomic-mt boost_charconv-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_locale-mt boost_log-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_thread-mt c crypto curl
WANTLIB += evdev gbm gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += m miniupnpc pipewire-0.3 pulse pulse-simple
WANTLIB += ssl swscale va va-drm vulkan wayland-client
WANTLIB += wayland-cursor wayland-egl wayland-server xcb

# C++23
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODCMAKE_LDFLAGS =	${LDFLAGS}

# Python and Jinja2 are only needed to generate the GLAD sources.
MODPY_RUNDEP =		No

# Opus is linked statically; FFmpeg sources provide the private CBS headers.
BUILD_DEPENDS =		audio/opus \
			graphics/ffmpeg:configure \
			graphics/vulkan-headers \
			textproc/nlohmann-json \
			wayland/wayland-protocols \
			www/py-jinja2
LIB_DEPENDS =		audio/pulseaudio \
			devel/boost \
			graphics/ffmpeg \
			graphics/vulkan-loader \
			multimedia/pipewire/pipewire,-libs \
			net/miniupnp/miniupnpc \
			wayland/libevdev-openbsd \
			x11/qt6/qtbase \
			x11/qt6/qtsvg

TEST_ENV+=		DISPLAY=:1
TEST_FLAGS =		--gtest_filter='-DownloadFileTests/*'

CONFIGURE_ARGS =	-DBUILD_DOCS=OFF \
			-DBUILD_TESTS=ON \
			-DBUILD_WEB_UI=OFF \
			-DBOOST_USE_STATIC=OFF \
			-DCUDA_FAIL_ON_MISSING=OFF \
			-DFFMPEG_PREPARED_BINARIES=${LOCALBASE} \
			-DGLAD_SKIP_PIP_INSTALL=ON \
			-DSUNSHINE_ASSETS_DIR=share/sunshine/assets \
			-DSUNSHINE_ENABLE_CUDA=OFF \
			-DSUNSHINE_ENABLE_DRM=OFF \
			-DSUNSHINE_SYSTEM_VULKAN_HEADERS=ON \
			-DSUNSHINE_SYSTEM_WAYLAND_PROTOCOLS=ON

CONFIGURE_ENV =		BRANCH=master \
			BUILD_VERSION=${V}

# build with -g, note static link with system .a already contains symboles
DEBUG_PACKAGES =	${BUILD_PACKAGES}

CFLAGS+=		-I${X11BASE}/include
CXXFLAGS+=		-I${X11BASE}/include \
			-I${WRKDIR}/graphics/ffmpeg/build-${MACHINE_ARCH} \
			-I${WRKDIR}/graphics/ffmpeg/build-${MACHINE_ARCH}/src
LDFLAGS+=		-L${X11BASE}/lib

ALL_TARGET =		sunshine

post-configure:
	cp -R ${WRKDIR}/usr/share/sunshine/web ${WRKBUILD}/assets/

pre-test:
	${MODCMAKE_BUILD_TARGET} -t test_sunshine

# Xvfb :1 -screen 0 1024x768x24 &
do-test:
	cd ${WRKBUILD}/tests && ${SETENV} ${ALL_TEST_ENV} \
		./test_sunshine ${TEST_FLAGS}

.include <bsd.port.mk>
