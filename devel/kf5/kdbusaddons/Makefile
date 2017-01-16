# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =	KDE convenience classes for DBus
DISTNAME =	kdbusaddons-${VERSION}

SHARED_LIBS =	KF5DBusAddons		1.0

WANTLIB =	Qt5Core Qt5DBus Qt5Gui Qt5X11Extras c m

LIB_DEPENDS =	devel/llvm \
		x11/qt5/qtx11extras

BUILD_DEPENDS =	devel/llvm,-python \
		devel/py-sip \
		x11/py-qt5

# XXX tests stuck anyway
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
