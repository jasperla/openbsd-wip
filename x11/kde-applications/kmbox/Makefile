# $OpenBSD$

COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

KDE5 =		Yes

SHARED_LIBS +=  KF5Mbox                   0.0 # 5.5

WANTLIB += KF5Mime Qt5Core m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools

LIB_DEPENDS =	x11/kde-applications/kmime

.include <bsd.port.mk>
