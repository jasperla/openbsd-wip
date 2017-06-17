# $OpenBSD$

COMMENT =		KDE5 control panel
DISTNAME =		systemsettings-${VERSION}

# same library is installed by KDE4
SHARED_LIBS =		systemsettingsview	60.0

WANTLIB += KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DBusAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JS KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KHtml KF5KIOCore KF5KIOWidgets KF5Parts KF5Service
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c m


BUILD_DEPENDS =		devel/kf5/kdoctools \
			devel/gettext-tools

RUN_DEPENDS =		devel/kf5/kdoctools \
			devel/desktop-file-utils \
			devele/gettext

LIB_DEPENDS =		devel/kf5/kcmutils \
			devel/kf5/kconfig \
			devel/kf5/kdbusaddons \
			devel/kf5/khtml \
			devel/kf5/khtml \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kitemviews \
			devel/kf5/kservice \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui

KDE4_L10N_CONFLICT =	Yes

.include <bsd.port.mk>
