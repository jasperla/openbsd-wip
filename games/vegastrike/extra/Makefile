# $OpenBSD$

COMMENT =	extra data files for vegastrike

DISTNAME =	vegastrike-extra-${V}

RUN_DEPENDS =	games/vegastrike/data>=${V}

NO_BUILD =	Yes
NO_REGRESS =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/vegastrike

.include <bsd.port.mk>
