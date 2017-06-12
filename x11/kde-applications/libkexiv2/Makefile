# $OpenBSD$

COMMENT =	library to manipulate pictures metadata
DISTNAME =	libkexiv2-${VERSION}
CATEGORIES =	graphics

KDE5 =		Yes

SHARED_LIBS +=  KF5KExiv2                 0.0 # 5.0

WANTLIB += Qt5Core Qt5Gui exiv2 m

LIB_DEPENDS =	graphics/exiv2 \
		x11/kde-applications/libkexiv2

NO_TEST =	Yes

.include <bsd.port.mk>
