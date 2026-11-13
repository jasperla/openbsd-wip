COMMENT =	library to parse Hyprland config files

V =		0.6.8
GH_ACCOUNT =	hyprwm
GH_PROJECT =	hyprlang
GH_TAGNAME =	v${V}

SHARED_LIBS =	hyprlang 0.0

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/hyprlang

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c++ c++abi hyprutils m pthread

MODULES =	devel/cmake

LIB_DEPENDS =	wayland/hyprutils

.include <bsd.port.mk>
