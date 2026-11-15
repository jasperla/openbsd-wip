COMMENT =	Hyprland version of wayland-scanner in C++

V =		0.4.6
GH_ACCOUNT =	hyprwm
GH_PROJECT =	hyprwayland-scanner
GH_TAGNAME =	v${V}

CATEGORIES =	wayland devel
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/hyprwayland-scanner

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m pugixml

MODULES =	devel/cmake

BUILD_DEPENDS =	textproc/pugixml

LIB_DEPENDS =	textproc/pugixml

NO_TEST =	Yes

.include <bsd.port.mk>
