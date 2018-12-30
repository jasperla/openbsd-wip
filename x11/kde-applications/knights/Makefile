# $OpenBSD: Makefile,v 1.1.1.1 2018/12/19 07:45:47 rsadowski Exp $

COMMENT =	chess board with XBoard protocol support
DISTNAME =	knights-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/knights

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5KDEGames KF5Package
WANTLIB += KF5Plasma KF5Plotting KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Svg Qt5TextToSpeech Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=x11/qt5/qtquickcontrols
RUN_DEPENDS +=	x11/qt5/qtquickcontrols \
		games/gnuchess

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kpackage \
		devel/kf5/kplotting \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/kde-applications/libkdegames \
		x11/qt5/qtdeclarative \
		x11/qt5/qtspeech \
		x11/qt5/qtsvg

.include <bsd.port.mk>
