# $OpenBSD$

COMMENT =		command-line KDE5 utils
DISTNAME =		kde-cli-tools-${VERSION}

SHARED_LIBS =		kdeinit5_kcmshell5	0.0

WANTLIB += KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Pty KF5Service KF5Su KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Svg Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c m

BUILD_DEPENDS =		devel/kf5/kdoctools \
			devel/kf5/kinit \
			devel/gettext-tools

RUN_DEPENDS =		devel/kf5/kdoctools \
			devel/kf5/kinit \
			devel/gettext

LIB_DEPENDS =		devel/kf5/kcmutils \
			devel/kf5/kconfig \
			devel/kf5/kdesu \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kservice \
			devel/kf5/kwindowsystem

KDE4_L10N_CONFLICT =	Yes

.include <bsd.port.mk>
