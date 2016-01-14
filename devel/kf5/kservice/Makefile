# $OpenBSD$

COMMENT =		plugin framework for KDE desktop services
DISTNAME =		kservice-${VERSION}

SHARED_LIBS =		KF5Service		0.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n Qt5Core Qt5DBus Qt5Xml c m pthread

MODULES =		lang/python devel/gettext

BUILD_DEPENDS =		devel/kf5/kdoctools
RUN_DEPENDS =		devel/kf5/kdoctools
LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

# de-conflict with KDE4
# etc parts will be moved to share/examples by kf5.port.mk
post-install:
	mv ${PREFIX}/etc/xdg/menus/applications.menu \
	   ${PREFIX}/etc/xdg/menus/applications-kde5.menu

.include <bsd.port.mk>
