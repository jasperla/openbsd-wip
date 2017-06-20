# $OpenBSD$

COMMENT =	EXIV2 Library interface for KDE
DISTNAME =	libkexiv2-${VERSION}
CATEGORIES =	graphics devel

KDE5 =		Yes

SHARED_LIBS +=  KF5KExiv2                 0.0 # 5.0

WANTLIB += Qt5Core Qt5Gui exiv2 m

LIB_DEPENDS =	graphics/exiv2 \
		x11/kde-applications/libkexiv2

NO_TEST =	Yes

.include <bsd.port.mk>
