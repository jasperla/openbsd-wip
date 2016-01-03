# $OpenBSD$

COMMENT =		access to the windowing system for KDE apps
DISTNAME =		kwindowsystem-${VERSION}

SHARED_LIBS =		KF5WindowSystem		0.0

WANTLIB =  ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += Xfixes Xrender m xcb xcb-keysyms

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
