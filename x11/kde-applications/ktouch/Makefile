# $OpenBSD$

COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education

KDE5 =		Yes

WANTLIB += ICE KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Declarative KF5I18n
WANTLIB += KF5ItemViews KF5KCMUtils KF5Package KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Script Qt5Sql Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns
WANTLIB += SM X11 Xext c m xcb xcb-xkb xkbfile

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/gettext

LIB_DEPENDS =	x11/qt5/qtxmlpatterns \
		devel/kf5/kcmutils \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/ki18n  \
		devel/kf5/kitemviews

NO_TEST =	Yes

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
