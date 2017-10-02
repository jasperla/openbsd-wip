# $OpenBSD$

COMMENT =	Thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
CATEGORIES =	devel x11

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5JobWidgets KF5KDcraw KF5KExiv2 KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Widgets m


LIB_DEPENDS =	devel/kf5/kio \
		x11/kde-applications/libkexiv2 \
		x11/kde-applications/libkdcraw

NO_TEST =	Yes

.include <bsd.port.mk>
