# $OpenBSD$

COMMENT =		command-line KDE5 utils
DISTNAME =		kde-cli-tools-${VERSION}

SHARED_LIBS =		kdeinit5_kcmshell5	0.0

WANTLIB =  KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Pty KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5Su KF5TextWidgets KF5UnitConversion
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c m pthread

BUILD_DEPENDS =		devel/kf5/kdoctools \
			devel/kf5/kinit
RUN_DEPENDS =		devel/kf5/kdoctools \
			devel/kf5/kinit

LIB_DEPENDS =		devel/kf5/kcmutils \
			devel/kf5/kconfig \
			devel/kf5/kdelibs4support \
			devel/kf5/kdesu \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kwindowsystem

KDE4_L10N_CONFLICT =	Yes

.include <bsd.port.mk>
