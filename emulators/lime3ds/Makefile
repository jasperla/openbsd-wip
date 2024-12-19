# ships a dynarmic copy, and dynarmic only supports x86-64 and AArch64
ONLY_FOR_ARCHS =	amd64 arm64

USE_WXNEEDED =	Yes

COMMENT =	nintendo 3DS emulator

DIST_TUPLE +=	github Lime3DS Lime3DS ${V} .

# Compatibility List
DIST_TUPLE +=	github Lime3DS compatibility-list \
				fa9d49d22e698df2f238e53f2b34acda08b947f6 dist/compatibility_list

# Git Submodules
DIST_TUPLE +=	github rtiangha dynarmic \
				61c0090913ddd583a3ae2ecdd254baec0d4b2565 externals/dynarmic
DIST_TUPLE +=	github herumi xbyak \
				aabb091ae37068498751fd58202a9854408ecb0e externals/xbyak
DIST_TUPLE +=	github wwylele teakra \
				01db7cdd00aabcce559a8dddce8798dabb71949b externals/teakra
DIST_TUPLE +=	github facebook zstd \
				0e2ceb2d5061f3a8357d124029ebaae16d915a3d externals/zstd

# Git Sub-submodules
DIST_TUPLE +=	github rtiangha mcl \
				8e4f8f06ae1684e6acb8cd3af19495ceb7582bb5 \
				externals/dynarmic/externals/mcl
DIST_TUPLE +=	github Tessil robin-map \
				1115dad3ffa0994e3f43b693d9b9cc99944c64c1 \
				externals/dynarmic/externals/robin-map
DIST_TUPLE +=	github zyantific zycore-c \
				419cde9e9246370935a351fb3cc80b02fbc6abd6 \
				externals/dynarmic/externals/zycore
DIST_TUPLE +=	github zyantific zydis \
				16c6a369c193981e9cf314126589eaa8763f92c3 \
				externals/dynarmic/externals/zydis
DIST_TUPLE +=	github knik0 faad2 \
				abf9b320cac89aaee3beafa12d2bb60253d7112e \
				externals/faad2/faad2

V =		2118
PKGNAME =	lime3ds-0.0.0.${V}

MAINTAINER =	izzy Meyer <izder456@disroot.org>

CATEGORIES =	emulators

# GPLv2, BSD-2-clause (fmt), LGPL (getopt), MIT (httplib, json, lurlparser),
# "New BSD license" (inih), unlicense/public domain (microprofile),
# BSD-3-clause (nihstro), LGPLv2.1 (soundtouch), BSD-style (xbyak)
PERMIT_PACKAGE =	Yes

USE_NOBTCFI =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Widgets SoundTouch boost_iostreams-mt crypto openal
WANTLIB += ssl SDL2 boost_serialization-mt
WANTLIB += c cryptopp enet fmt m usb-1.0

MODULES =	devel/cmake \
		x11/qt6 \

# C++20
COMPILER =	base-clang ports-clang

BUILD_DEPENDS =	devel/catch2 \
		devel/git

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

# ffmpeg is loaded via dlopen(3) when dumping recorded gameplay video
LIB_DEPENDS =	audio/openal \
		audio/soundtouch \
		devel/boost \
		devel/cryptopp \
		devel/fmt \
		devel/libusb1 \
		devel/sdl2 \
		graphics/ffmpeg \
		net/enet \
		x11/qt6/qtmultimedia

CONFIGURE_ARGS =	-DENABLE_CUBEB=OFF \
			-DENABLE_WEB_SERVICE=OFF \
			-DENABLE_WEB_SERVICE=OFF \
			-DUSE_SYSTEM_BOOST=ON \
			-DUSE_SYSTEM_SDL2=ON \
			-DENABLE_FFMPEG_AUDIO_DECODER=ON \
			-DENABLE_FFMPEG_VIDEO_DUMPER=ON \
			-DLIME_USE_PRECOMPILED_HEADERS=OFF \
			-DDYNARMIC_USE_PRECOMPILED_HEADERS=OFF \
			-DUSE_SYSTEM_CATCH2=ON \
			-DUSE_SYSTEM_CRYPTOPP=ON \
			-DUSE_SYSTEM_FMT=ON \
			-DUSE_SYSTEM_FFMPEG_HEADERS=ON \
			-DUSE_SYSTEM_LIBUSB=ON \
			-DUSE_SYSTEM_ENET=ON \
			-DUSE_SYSTEM_OPENSSL=ON \
			-DUSE_SYSTEM_SOUNDTOUCH=ON \
			-DUSE_SYSTEM_OPENAL=ON \
			-DENABLE_VULKAN=OFF \
			-DLIME_WARNINGS_AS_ERRORS=OFF

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

WRKDIST =		${WRKDIR}/${DISTNAME}

CXXFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/lib/qt5/cmake/Qt5/

post-extract:
	rm -rf ${WRKSRC}/externals/{sdl2,catch2,fmt,boost,cryptopp}
#	rm -rf ${WRKSRC}/externals/dynarmic/externals/robin-map

.if ${MACHINE_ARCH} == amd64
PKG_ARGS +=	-Dx86=1
.else
PKG_ARGS +=	-Dx86=0
.endif

.include <bsd.port.mk>
