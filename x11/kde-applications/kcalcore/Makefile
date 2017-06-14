# $OpenBSD$

COMMENT =	The KDE calendar access library
DISTNAME =	kcalcore-${VERSION}
CATEGORIES =	textproc

KDE5 =		Yes

SHARED_LIBS +=  KF5CalendarCore           0.0 # 5.5

WANTLIB += KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml ical icalss m uuid

MODULES +=      lang/python

BUILD_DEPENDS+=	devel/gettext-tools \
		devel/kf5/kdesignerplugin \
		devel/kf5/kdoctools

RUN_DEPENDS +=	devel/kf5/kdoctools

LIB_DEPENDS +=	devel/kf5/kdelibs4support \
		devel/kf5/kbookmarks \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kparts \
		devel/kf5/knotifications \
		devel/kf5/sonnet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kwindowsystem \
		devel/kf5/ktextwidgets \
		sysutils/e2fsprogs \
		textproc/libical

.include <bsd.port.mk>
