# $OpenBSD: Makefile,v 1.5 2017/07/27 09:34:37 sthen Exp $

COMMENT =	statistics for the KDE Activity concept
DISTNAME =	kactivities-stats-${VERSION}

SHARED_LIBS =	KF5ActivitiesStats	3.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5ConfigCore Qt5Core
WANTLIB += Qt5DBus Qt5Sql m

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kconfig

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -DBOOST_NO_EXCEPTIONS=1"

.include <bsd.port.mk>
