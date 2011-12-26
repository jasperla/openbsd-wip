# $OpenBSD$

COMMENT =		terminal status monitor for Tor

DISTNAME =		arm-1.4.4.1

CATEGORIES =		net

HOMEPAGE =		http://www.atagar.com/arm/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://archive.torproject.org/arm/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
RUN_DEPENDS =		net/tor \
			sysutils/lsof

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/arm

MODPY_ADJ_FILES =	src/starter.py src/test.py \
	src/resources/torrcOverride/override.py
.for i in ScanSupport.py TorCtl.py StatsSupport.py PathSupport.py \
	GeoIPSupport.py SQLSupport.py TorUtil.py
MODPY_ADJ_FILES += src/TorCtl/${i}
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py ${WRKSRC}/arm ${WRKSRC}/install \
		${WRKSRC}/src/resources/arm.1

.include <bsd.port.mk>
