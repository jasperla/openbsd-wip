COMMENT =	lightweight Wayland rendering backend library

V =		0.16.0
GH_ACCOUNT =	hyprwm
GH_PROJECT =	aquamarine
GH_TAGNAME =	v${V}

WRKDIST =	${WRKDIR}/aquamarine-${V}

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/aquamarine

# BSD
PERMIT_PACKAGE =	Yes

SHARED_LIBS =	aquamarine 0.0

MODULES =	devel/cmake

WANTLIB += ${COMPILER_LIBCXX} EGL GLESv2 display-info drm epoll-shim
WANTLIB += gbm hyprutils input m pixman-1 seat udev wayland-client

BUILD_DEPENDS =	wayland/hyprwayland-scanner \
		misc/hwdata

LIB_DEPENDS =	wayland/hyprutils \
		sysutils/seatd \
		wayland/libinput-openbsd \
		wayland/wayland \
		sysutils/libdisplay-info \
		sysutils/libudev-openbsd \
		devel/epoll-shim

NO_TEST =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
