# $OpenBSD$

COMMENT =		KDE5 help GUI
DISTNAME =		khelpcenter-${VERSION}

SHARED_LIBS =		kdeinit5_khelpcenter	0.0

WANTLIB =  KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JS KF5JobWidgets KF5KCMUtils KF5KDELibs4Support
WANTLIB += KF5KHtml KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c m pthread

MODULES =		devel/gettext

# TODO: port ht://dig and put to RUN_DEPENDS

BUILD_DEPENDS =		devel/kf5/kinit
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kinit

LIB_DEPENDS =		devel/kf5/kcmutils \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/kdelibs4support \
			devel/kf5/khtml \
			devel/kf5/ki18n \
			devel/kf5/kservice

.include <bsd.port.mk>
