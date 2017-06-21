# $OpenBSD$

COMMENT =	Thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
CATEGORIES =	devel x11

KDE5 =		Yes

WANTLIB += KF5Completion KF5ConfigCore KF5CoreAddons KF5JobWidgets
WANTLIB += KF5KDcraw KF5KExiv2 KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += m

LIB_DEPENDS =	devel/kf5/kio \
		x11/kde-applications/libkexiv2 \
		x11/kde-applications/libkdcraw

NO_TEST =	Yes

.include <bsd.port.mk>
