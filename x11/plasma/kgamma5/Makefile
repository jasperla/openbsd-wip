# $OpenBSD$

COMMENT =		KDE5 monitor calibration tool
DISTNAME =		kgamma5-${VERSION}

WANTLIB += ICE KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5WidgetsAddons Qt5Core Qt5Gui
WANTLIB += Qt5Widgets Qt5Xml SM X11 Xext Xxf86vm m

BUILD_DEPENDS =		devel/kf5/kdoctools \
			devel/gettext-tools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/kdelibs4support \
			devel/kf5/ki18n

NO_TEST =		Yes

.include <bsd.port.mk>
