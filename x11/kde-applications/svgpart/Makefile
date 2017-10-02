# $OpenBSD$

COMMENT =	KPart for viewing SVGs
DISTNAME =	svgpart-${VERSION}
CATEGORIES =	graphics

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Parts
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml m


MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	devel/gettext

LIB_DEPENDS =	devel/kf5/kparts \
		devel/kf5/kcoreaddons \
		x11/qt5/qtsvg

.include <bsd.port.mk>
