# $OpenBSD$

COMMENT =		terrain generation tools for FlightGear

DISTNAME =		505a2ea982d946977cf3675ef1510d2f962671c5
PKGNAME =		terragear-3.0.0

CATEGORIES =		devel

#HOMEPAGE =		???	URL

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += CGAL CGAL_Core SimGearCore boost_system-mt boost_thread-mt
WANTLIB += c gdal gmp m mpfr pthread stdc++ tiff z

MASTER_SITES =		https://gitorious.org/fg/terragear/archive/
DISTFILES =		terrasync-3.0.0{505a2ea982d946977cf3675ef1510d2f962671c5}${EXTRACT_SUFX}

MODULES =		devel/cmake
LIB_DEPENDS =		geo/gdal \
			graphics/simgear \
			math/cgal>=4.3

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/fg-terragear

.include <bsd.port.mk>
