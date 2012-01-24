# $OpenBSD$

COMMENT = 		7kaa data files

DISTNAME =		7kaa-data-2.13

NO_BUILD =		Yes
PKG_ARCH =              *

WRKDIST = 		${WRKDIR}/7kaa

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/7kaa
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/7kaa

.include <bsd.port.mk>
