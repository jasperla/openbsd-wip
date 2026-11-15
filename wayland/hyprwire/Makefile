COMMENT =	IPC library for the Hyprland ecosystem

V =		0.3.1
GH_ACCOUNT =	hyprwm
GH_PROJECT =	hyprwire
GH_TAGNAME =	v${V}

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/hyprwire

# BSD
PERMIT_PACKAGE =	Yes

SHARED_LIBS =	hyprwire 0.0

WANTLIB += ${COMPILER_LIBCXX} c epoll-shim ffi hyprutils m pthread
WANTLIB += pugixml

MODULES =	devel/cmake

LIB_DEPENDS =	devel/epoll-shim \
		devel/libffi \
		textproc/pugixml \
		wayland/hyprutils

NO_TEST =	Yes

.include <bsd.port.mk>
