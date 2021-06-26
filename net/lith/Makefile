# $OpenBSD: Makefile,v 1.2 2021/01/03 08:35:56 rsadowski Exp $

COMMENT =		multiplatform WeeChat relay client

GH_ACCOUNT =		LithApp
GH_PROJECT =		Lith
GH_TAGNAME =		1.2.3

PKGNAME =		lith-${GH_TAGNAME}

CATEGORIES =		net x11

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5WebSockets Qt5Widgets Qt5Xml c m

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		devel/qmake \
			x11/qt5

RUN_DEPENDS =		x11/gtk+3,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		x11/qt5/qtmultimedia \
			x11/qt5/qtwebsockets \
			x11/qt5/qtquickcontrols2

#NO_TEST =		Yes

.include <bsd.port.mk>
