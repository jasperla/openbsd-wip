# $OpenBSD$

COMMENT =		basic data for vcmi

DISTNAME = 		vcmi-core-${V}
DISTFILES = 		${DISTNAME}${EXTRACT_SUFX}{core${EXTRACT_SUFX}}

EXTRACT_SUFX = 		.zip

NO_BUILD =		Yes
PKG_ARCH = 		*
WRKDIST = 		${WRKDIR}/Mods

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vcmi/Mods/
	cd ${WRKDIST} && pax -rw * ${PREFIX}/share/vcmi/Mods/

.include <bsd.port.mk>
