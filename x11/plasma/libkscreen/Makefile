# $OpenBSD$

COMMENT =		KDE5 internal components for X screens management
VERSION =		5.5.2
DISTNAME =		libkscreen-${VERSION}


SHARED_LIBS =		KF5Screen		0.0

WANTLIB =  Qt5Core Qt5DBus Qt5Gui Qt5X11Extras c m pthread xcb
WANTLIB += xcb-randr

LIB_DEPENDS= 		x11/qt5/qtx11extras

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KF5Wayland=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
