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

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	x11/kde-applications/libkdegames

NO_TEST =	Yes

.include <bsd.port.mk>
