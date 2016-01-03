# $OpenBSD$

COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}

SHARED_LIBS =	KF5Solid		0.0

WANTLIB =  Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Widgets
WANTLIB += Qt5Xml c m pthread

BUILD_DEPENDS =	devel/bison

#The following tests FAILED:
#          2 - halbasictest (Failed)

.include <bsd.port.mk>
