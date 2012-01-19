# $OpenBSD$

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-data-${V}
PKGNAME =		flightgear-data-${V}

MASTER_SITES =	http://ftp.linux.kiev.ua/pub/fgfs/Shared/ \
		ftp://ftp.kingmont.com/flightsims/flightgear/Shared/

NO_BUILD =		Yes
NO_REGRESS =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/flightgear
	cd ${WRKDIR}/data && pax -rw . ${PREFIX}/share/flightgear

.include <bsd.port.mk>
