# $OpenBSD$

COMMENT =		KDE5 Plasma development tools
DISTNAME =		plasma-sdk-${VERSION}

WANTLIB =  KF5Archive KF5Auth KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5Declarative KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Package KF5Parts KF5Plasma
WANTLIB += KF5PlasmaQuick KF5QuickAddons KF5Service KF5SonnetUi
WANTLIB += KF5TextEditor KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets Qt5Xml c m pthread

MODULES =		devel/gettext

BUILD_DEPENDS =		devel/kf5/knewstuff

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/git \
			devel/kf5/knewstuff

LIB_DEPENDS =		devel/kf5/karchive \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/kdeclarative \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kparts \
			devel/kf5/kservice \
			devel/kf5/ktexteditor \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/plasma-framework

CONFIGURE_ARGS =	-DBUILD_TESTING=Yes

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
