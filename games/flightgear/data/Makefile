# $OpenBSD$

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-data-${V}
PKGNAME =		flightgear-data-${V}

MASTER_SITES =	http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Shared/ \
		http://ftp.linux.kiev.ua/pub/fgfs/Shared/ \
		ftp://ftp.kingmont.com/flightsims/flightgear/Shared/
		

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/flightgear
	cd ${WRKDIR}/data && pax -rw . ${PREFIX}/share/flightgear

.include <bsd.port.mk>
