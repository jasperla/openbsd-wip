# $OpenBSD$

COMMENT =		visual components for Bluetooth support
DISTNAME =		bluedevil-${VERSION}

WANTLIB =  KF5Auth KF5BluezQt KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Widgets Qt5Xml c m pthread

BUILD_DEPENDS =		devel/kf5/kded \
			devel/kf5/plasma-framework \
			devel/gettext-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/gettext \
			misc/shared-mime-info \
			x11/gtk+3,-guic \
			devel/kf5/kded \
			devel/kf5/plasma-framework

LIB_DEPENDS =		devel/kf5/bluez-qt \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/knotifications \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem

NO_TEST =		Yes

.include <bsd.port.mk>
