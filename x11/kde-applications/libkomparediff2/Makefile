# $OpenBSD$

COMMENT =	library to compare files and strings
DISTNAME =	libkomparediff2-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  komparediff2              0.0 # 5.1

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets Qt5Xml m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
