# $OpenBSD$

COMMENT =	speech files for vegastrike

DISTNAME =	vegastrike-speech-${V}

RUN_DEPENDS =	games/vegastrike/data>=${V}

EXTRACT_SUFX =	.tar

NO_BUILD =	Yes
NO_REGRESS =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/vegastrike

.include <bsd.port.mk>
