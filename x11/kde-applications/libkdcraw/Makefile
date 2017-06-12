# $OpenBSD$

COMMENT =	C++ interface used to decode RAW picture
DISTNAME =	libkdcraw-${VERSION}
CATEGORIES =	devel grephics

KDE5 =		Yes

SHARED_LIBS +=  KF5KDcraw                 0.0 # 5.

WANTLIB += Qt5Core Qt5Gui m raw

LIB_DEPENDS =	graphics/libraw

NO_TEST =	Yes

.include <bsd.port.mk>
