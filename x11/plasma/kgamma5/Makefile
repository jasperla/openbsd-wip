# $OpenBSD$

COMMENT =		KDE5 monitor calibration tool
DISTNAME =		kgamma5-${VERSION}

WANTLIB =  ICE KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml SM X11 Xext Xxf86vm m

BUILD_DEPENDS =		devel/kf5/kdoctools \
			devel/gettext-tools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/kdelibs4support \
			devel/kf5/ki18n

.include <bsd.port.mk>
