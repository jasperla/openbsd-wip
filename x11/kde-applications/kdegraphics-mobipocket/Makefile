# $OpenBSD$

COMMENT =	collection of plugins to handle mobipocket files
DISTNAME =	kdegraphics-mobipocket-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

SHARED_LIBS +=  qmobipocket               0.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets

LIB_DEPENDS =	devel/kf5/kio

NO_TEST =	Yes

.include <bsd.port.mk>
