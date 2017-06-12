# $OpenBSD$

COMMENT =	interface to use kipi-plugins from a KDE application
DISTNAME =	libkipi-${VERSION}
CATEGORIES =	graphics

KDE5 =		Yes

SHARED_LIBS +=  KF5Kipi                   0.0 # 5.2

WANTLIB += KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Service KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml m

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kxmlgui \
		devel/kf5/kservice \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

NO_TEST =	Yes

.include <bsd.port.mk>
