# $OpenBSD$

COMMENT =	data files for vegastrike

DISTNAME =	vegastrike-data-${V}

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

RUN_DEPENDS =	devel/desktop-file-utils

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/vegastrike
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons
	${INSTALL_DATA} ${WRKSRC}/vegastrike.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/vegastrike.ico \
		${PREFIX}/share/icons

.include <bsd.port.mk>
