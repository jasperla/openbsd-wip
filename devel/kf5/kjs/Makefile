# $OpenBSD$

COMMENT =		JavaScript/ECMAScript engine for KDE
DISTNAME =		kjs-${VERSION}

SHARED_LIBS =		KF5JS		0.0
SHARED_LIBS +=		KF5JSApi	0.0

WANTLIB =		Qt5Core c m pcre pcreposix pthread

BUILD_DEPENDS =		devel/kf5/kdoctools
RUN_DEPENDS =		devel/kf5/kdoctools

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
