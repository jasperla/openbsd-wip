# $OpenBSD$

COMMENT =	Five-in-a-row Board Game
DISTNAME =	bovo-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/bovo

KDE5 =		Yes
KF5_BUILD_PY =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5KDEGames KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml c
WANTLIB += m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkdegames

.include <bsd.port.mk>
