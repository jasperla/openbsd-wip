# $OpenBSD$

COMMENT =	Common code and data for many KDE games
DISTNAME =	libkdegames-${VERSION}
CATEGORIES =	devel games

KDE5 =		Yes

SHARED_LIBS +=  KF5KDEGames               0.0 # 7.0
SHARED_LIBS +=  KF5KDEGamesPrivate        0.0 # 1.0

WANTLIB += KF5Archive KF5Attica KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DNSSD KF5Declarative KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Package KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml m
WANTLIB += openal sndfile

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	devel/gettext

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/karchive \
		devel/kf5/kdnssd \
		devel/kf5/kdeclarative \
		devel/kf5/kguiaddons \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kglobalaccel \
		devel/kf5/ktextwidgets \
		devel/kf5/kcrash \
		devel/kf5/kbookmarks \
		devel/kf5/kxmlgui \
		audio/openal

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
