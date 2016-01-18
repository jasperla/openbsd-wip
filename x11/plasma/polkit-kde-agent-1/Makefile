# $OpenBSD$

COMMENT =		PolicyKit-1 KDE5 agent
DISTNAME =		polkit-kde-agent-1-${VERSION}
PKGNAME =		polkit-kde-agent-${VERSION}

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5Notifications KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Widgets c
WANTLIB += m polkit-qt5-agent-1 polkit-qt5-core-1 polkit-qt5-gui-1
WANTLIB += pthread

MODULES =		devel/gettext

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/knotifications \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			x11/polkit-qt,qt5

.include <bsd.port.mk>
