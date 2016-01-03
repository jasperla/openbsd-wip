# $OpenBSD$

COMMENT =		KDE icon GUI utility library
DISTNAME =		kiconthemes-${VERSION}

SHARED_LIBS =		KF5IconThemes		0.0

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5ItemViews KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5Xml c m
WANTLIB += pthread

MODULES =		devel/gettext lang/python

LIB_DEPENDS =		devel/kf5/kconfigwidgets \
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
