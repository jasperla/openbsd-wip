# $OpenBSD$

COMMENT =		KDE5 process monitor
DISTNAME =		ksysguard-${VERSION}

WANTLIB += KF5Attica KF5Auth KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5Notifications
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += c ksgrd ksignalplotter m processcore processui

MODULES +=		lang/python

BUILD_DEPENDS +=	devel/gettext-tools
RUN_DEPENDS +=		devel/gettext

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kdelibs4support \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kitemviews \
			devel/kf5/knewstuff \
			x11/plasma/libksysguard

CONFIGURE_ARGS =	CMAKE_DISABLE_FIND_PACKAGE_Sensors=Yes

.include <bsd.port.mk>
