# $OpenBSD$

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${VERSION}
CATEGORIES =	x11 math

KDE5 =		Yes

WANTLIB += KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5GuiAddons KF5I18n KF5Notifications
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml c gmp m

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kinit

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext \
		devel/kf5/kdoctools \
		devel/kf5/kinit

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kguiaddons \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/knotifications \
		devel/gmp

.include <bsd.port.mk>
