# $OpenBSD$

COMMENT =		KDE5 Plasma Search and Launch
DISTNAME =		milou-${VERSION}

SHARED_LIBS =		milou		0.0

WANTLIB += KF5ConfigCore KF5CoreAddons KF5Package KF5Plasma KF5Runner
WANTLIB += KF5Service Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick
WANTLIB += Qt5Widgets m

MODULES +=		lang/python

RUN_DEPENDS =		devel/gettext

# XXX not sure
BUILD_DEPENDS  =	devel/kf5/kdeclarative \
			devel/kf5/ki18n \
			devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/krunner \
			devel/kf5/kservice \
			devel/kf5/plasma-framework

.include <bsd.port.mk>
