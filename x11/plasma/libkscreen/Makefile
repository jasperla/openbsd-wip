# $OpenBSD$

COMMENT =		KDE5 internal components for X screens management
DISTNAME =		libkscreen-${VERSION}

SHARED_LIBS +=  KF5Screen                 0.0 # 5.10

WANTLIB += KF5WaylandClient Qt5Core Qt5DBus Qt5Gui Qt5X11Extras
WANTLIB += c m xcb xcb-rand

LIB_DEPENDS =		x11/qt5/qtx11extras \
			devel/kf5/kwayland

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
