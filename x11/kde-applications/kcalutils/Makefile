# $OpenBSD$

COMMENT =	library for the handling of calendar data.
DISTNAME =	kcalutils-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  KF5CalendarUtils          0.0 # 5.6

KDE5 =		Yes
KF5_BUILD_PY =	Yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5Bookmarks
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5IdentityManagement
WANTLIB += KF5ItemViews KF5JobWidgets KF5KDELibs4Support KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Notifications KF5Parts
WANTLIB += KF5PimTextEdit KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml ical icalss m

BUILD_DEPENDS +=devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdelibs4support \
		devel/kf5/kcodecs \
		x11/kde-applications/kcalcore \
		x11/kde-applications/kidentitymanagement \
		x11/grantlee-qt5 \
		textproc/libical

.include <bsd.port.mk>
