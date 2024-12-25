COMMENT =	Nintendo DS emulator

PKGNAME =	melonds-$V
V =		1.0rc

DIST_TUPLE +=	github melonDS-emu melonDS $V .

CATEGORIES =	emulators

HOMEPAGE =	https://melonds.kuribo64.net/

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += EGL GL ICE Qt6Core Qt6Gui Qt6Multimedia Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Widgets SDL2 SM X11 Xext
WANTLIB += archive c enet glib-2.0 intl m slirp zstd

MODULES =	devel/cmake
LIB_DEPENDS =	archivers/libarchive \
		devel/sdl2 \
		net/enet \
		net/libslirp \
		x11/qt6/qtmultimedia
BUILD_DEPENDS =	devel/kf6/extra-cmake-modules
RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils


CONFIGURE_ARGS +=	-DMELONDS_EMBED_BUILD_INFO=ON \
			-DMELONDS_BUILD_PROVIDER="izzy Meyer <izder456@disroot.org>" \
			-DMELONDS_GIT_HASH="e3fa6f4224e0d706df3ee262ae41cfb0deadc593" \
			-DMELONDS_GIT_BRANCH="master" \
			-DBUILD_STATIC=OFF \
			-DNEED_LIBRT=OFF \
			-DUSE_SYSTEM_LIBSLIRP=ON \
			-DENABLE_GDBSTUB=OFF \
			-DENABLE_JIT=OFF \
			-DENABLE_LTO_RELEASE=ON \
			-DENABLE_LTO=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
