# $OpenBSD$

COMMENT =	memory enhancement game
DISTNAME =	blinken-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/education/blinken/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c m phonon4qt5experimental

MODULES =	lang/python \
		multimedia/phonon

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kcrash

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools \
		devel/kf5/kcrash

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kguiaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kdbusaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
