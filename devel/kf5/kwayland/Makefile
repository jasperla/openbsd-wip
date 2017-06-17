# $OpenBSD:$

COMMENT =	Client and Server library wrapper for the Wayland
DISTNAME =	kwayland-${VERSION}

SHARED_LIBS +=  KF5WaylandClient          0.0 # 5.34
SHARED_LIBS +=  KF5WaylandServer          0.0 # 5.34

WANTLIB += EGL Qt5Concurrent Qt5Core Qt5Gui c m wayland-client
WANTLIB += wayland-server

LIB_DEPENDS =	x11/wayland

.include <bsd.port.mk>
