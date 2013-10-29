# $OpenBSD$

COMMENT =		basic data for vcmi

DISTNAME = 		core
PKGNAME = 		vcmi-core-${V}

EXTRACT_SUFX = 	.zip

NO_BUILD =		Yes
PKG_ARCH = 		*
WRKDIST = 		${WRKDIR}/Mods

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vcmi/Mods/
	cd ${WRKDIST} && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/vcmi/Mods/{}" \;
	cd ${WRKDIST} && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/vcmi/Mods/{}" \;

.include <bsd.port.mk>
