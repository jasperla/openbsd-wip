COMMENT =	C++ utilities used across the Hypr* ecosystem

V =		0.14.3
GH_ACCOUNT =	hyprwm
GH_PROJECT =	hyprutils
GH_TAGNAME =	v${V}

SHARED_LIBS =	hyprutils 0.0

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/hyprutils

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m pixman-1

MODULES =	devel/cmake

.include <bsd.port.mk>
