# $OpenBSD$

COMMENT =	classic minesweeper game
DISTNAME =	kmines-${VERSION}
CATEGORIES =	games

KDE5 =		Yes

WANTLIB += KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5I18n KF5KDEGames
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Widgets Qt5Xml c m

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		x11/qt5/qtdeclarative \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	x11/kde-applications/libkdegames \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/ktextwidgets \
		devel/kf5/kxmlgui


NO_TEST =	Yes

.include <bsd.port.mk>
