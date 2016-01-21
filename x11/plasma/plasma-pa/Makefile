# $OpenBSD$

COMMENT =		PulseAudio integration components for Plasma
DISTNAME =		plasma-pa-${VERSION}

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5Declarative KF5GlobalAccel
WANTLIB += KF5I18n KF5Package KF5QuickAddons Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5Quick Qt5Widgets m pulse pulse-mainloop-glib

MODULES =		devel/gettext

BUILD_DEPENDS =		devel/kf5/kdoctools \
			devel/kf5/plasma-framework
RUN_DEPENDS =		devel/kf5/kdoctools \
			devel/kf5/plasma-framework

LIB_DEPENDS =		audio/pulseaudio \
			devel/kf5/kcoreaddons \
			devel/kf5/kdeclarative \
			devel/kf5/kglobalaccel \
			devel/kf5/ki18n

.include <bsd.port.mk>
