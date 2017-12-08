# $OpenBSD$

COMMENT =		plugins for the wayland windowing system
DISTNAME =		kwayland-integration-${VERSION}

WANTLIB += KF5IdleTime KF5WaylandClient KF5WindowSystem Qt5Core
WANTLIB += Qt5Gui Qt5Widgets m

LIB_DEPENDS =		devel/kf5/kwayland \
			devel/kf5/kwindowsystem \
			devel/kf5/kidletime

.include <bsd.port.mk>
