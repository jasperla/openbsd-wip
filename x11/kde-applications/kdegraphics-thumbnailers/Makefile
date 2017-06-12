# $OpenBSD$

COMMENT =	Thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
CATEGORIES =	devel x11

KDE5 =		Yes

WANTLIB += KF5Completion KF5ConfigCore KF5CoreAddons KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets m

LIB_DEPENDS =	devel/kf5/kio

NO_TEST =	Yes

.include <bsd.port.mk>
