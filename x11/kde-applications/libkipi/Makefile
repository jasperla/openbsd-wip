# $OpenBSD$

COMMENT =	interface to use kipi-plugins from a KDE application
DISTNAME =	libkipi-${VERSION}
CATEGORIES =	devel graphics

KDE5 =		Yes

SHARED_LIBS +=  KF5Kipi                   0.0 # 5.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Service
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

RUN_DEPENDS =	x11/gtk+3,-guic \

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kxmlgui \
		devel/kf5/kservice

.include <bsd.port.mk>
