# $OpenBSD$

COMMENT =		KDE framework for aggregating and accessing people contacts
DISTNAME =		kpeople-${VERSION}

SHARED_LIBS =   	KF5People		0.0 # 5.17
SHARED_LIBS +=  	KF5PeopleBackend	0.0 # 5.17
SHARED_LIBS +=  	KF5PeopleWidgets	0.0 # 5.17

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5I18n KF5ItemViews KF5Service
WANTLIB += KF5WidgetsAddons Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Sql Qt5Widgets m

MODULES =		devel/gettext

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
