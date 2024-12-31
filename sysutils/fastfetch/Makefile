COMMENT =	system information tool written in c
CATEGORIES =	sysutils misc
MAINTAINER =	Carter Li <zhangsongcui@live.cn>

GH_ACCOUNT =	fastfetch-cli
GH_PROJECT =	fastfetch
GH_TAGNAME =	2.33.0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c kvm m pthread

MODULES =		devel/cmake \
			lang/python

# dlopen()'s on runtime if built against
BUILD_DEPENDS =		audio/pulseaudio \
			databases/sqlite3 \
			devel/glib2 \
			devel/dconf \
			devel/pkgconf \
			graphics/vulkan-loader \
			graphics/vulkan-headers \
			graphics/chafa \
			graphics/ImageMagick \
			wayland/wayland \
			x11/dbus \
			x11/xfce4/xfconf

RUN_DEPENDS =		misc/hwdata

COMPILER =		base-clang

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DSET_TWEAK=OFF \
			-DBUILD_TESTS=ON

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
