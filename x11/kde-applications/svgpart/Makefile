# $OpenBSD$

COMMENT =	KPart for viewing SVGs
DISTNAME =	svgpart-${VERSION}
CATEGORIES =	graphics

KDE5 =		Yes

# XXX shared libs?

WANTLIB += KF5Auth KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Parts KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Svg Qt5Widgets Qt5Xml m

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	devel/gettext

LIB_DEPENDS =	devel/kf5/kparts \
		devel/kf5/kcoreaddons \
		x11/qt5/qtsvg

NO_TEST =	Yes

.include <bsd.port.mk>
