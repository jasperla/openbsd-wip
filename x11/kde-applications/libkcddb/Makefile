# $OpenBSD$

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${VERSION}
CATEGORIES =	devel multimedia

KDE5 =		Yes

SHARED_LIBS +=  KF5Cddb                   0.0 # 5.0
SHARED_LIBS +=  KF5CddbWidgets            0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml m musicbrainz5

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcodecs \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		audio/libmusicbrainz5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
