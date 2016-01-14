# $OpenBSD$

COMMENT =		X11 screen management for KDE5
DISTNAME =		kscreen-${VERSION}

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5GlobalAccel KF5I18n
WANTLIB += KF5Screen KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Widgets
WANTLIB += Qt5Xml c m pthread

BUILD_DEPENDS =		devel/kf5/kded
RUN_DEPENDS =		devel/kf5/kded

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kdbusaddons \
			devel/kf5/kglobalaccel \
			devel/kf5/ki18n \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			x11/plasma/libkscreen>=5

.include <bsd.port.mk>
