# $OpenBSD$

COMMENT =	data files for vegastrike

DISTNAME =	vegastrike-linux-${V}
PKGNAME =	vegastrike-data-${V}

NO_BUILD =	Yes
NO_REGRESS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/vegastrike

.include <bsd.port.mk>
