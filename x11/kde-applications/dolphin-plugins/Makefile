# $OpenBSD$

COMMENT =	Dolphin plugins
DISTNAME =	dolphin-plugins-${VERSION}
CATEGORIES =	editors

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextWidgets KF5UnitConversion
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kdelibs4support \
		devel/kf5/kio \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem

.include <bsd.port.mk>
