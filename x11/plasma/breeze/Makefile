# $OpenBSD$

COMMENT =		breeze KDE desktop theme
DISTNAME =		breeze-${VERSION}

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5GuiAddons KF5I18n KF5KCMUtils KF5Service
WANTLIB += KF5Style KF5WidgetsAddons KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets Qt5X11Extras Qt5Xml c kdecorations2
WANTLIB += m pthread xcb

BUILD_DEPENDS =		devel/kf5/kpackage \
			devel/kf5/plasma-framework
RUN_DEPENDS =		devel/kf5/kpackage \
			devel/kf5/plasma-framework

LIB_DEPENDS =		devel/kf5/frameworkintegration \
			devel/kf5/kauth \
			devel/kf5/kcmutils \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kwindowsystem \
			x11/plasma/kdecoration

.include <bsd.port.mk>
