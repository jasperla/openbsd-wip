# $OpenBSD$

COMMENT =		Plasma Media Center by KDE5
DISTNAME =		plasma-mediacenter-${VERSION}

SHARED_LIBS =		plasmamediacenter	0.0 # 5.5

WANTLIB =  KF5Activities KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5GuiAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5Quick Qt5Widgets Qt5Xml m tag

MODULES =		devel/gettext

BUILD_DEPENDS =		devel/kf5/kdeclarative \
			devel/kf5/plasma-framework

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kdeclarative \
			devel/kf5/plasma-framework

LIB_DEPENDS =		audio/taglib \
			devel/kf5/kactivities \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kservice \
#			x11/kde-applications/baloo

.include <bsd.port.mk>
