# $OpenBSD$

COMMENT =	collection of plugins to handle mobipocket files
DISTNAME =	kdegraphics-mobipocket-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

SHARED_LIBS +=  qmobipocket               0.0 # 2.0

WANTLIB += KF5Completion KF5ConfigCore KF5CoreAddons KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets m

LIB_DEPENDS =	devel/kf5/kio

NO_TEST =	Yes

.include <bsd.port.mk>
