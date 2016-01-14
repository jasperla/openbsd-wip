# $OpenBSD$

COMMENT =	execute actions as privileged user
DISTNAME =	kauth-${VERSION}

SHARED_LIBS =	KF5Auth		0.0

WANTLIB =	KF5CoreAddons Qt5Core Qt5DBus Qt5Gui Qt5Widgets m

BUILD_DEPENDS =	x11/polkit-qt,qt5
RUN_DEPENDS =	x11/polkit-qt,qt5

LIB_DEPENDS =	devel/kf5/kcoreaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
