# $OpenBSD$

V =		1.4.0
COMMENT =	open source voxel world game
DISTNAME =	TerasologyOmega-${V}{TerasologyOmega}
PKGNAME =	terasology-${V}
EXTRACT_SUFX =	.zip

CATEGORIES =	games
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# Apache 2.0 for the game, CC-BY 4.0 for artwork
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/MovingBlocks/Terasology/releases/download/v${V}/

MODULES =	java
MODJAVA_VER =	1.8+

RUN_DEPENDS =	games/lwjgl \
		java/javaPathHelper

NO_BUILD =	Yes

WRKDIST =	${WRKDIR}

do-configure:
	${SUBST_CMD} ${WRKSRC}/run_linux.sh
	sed -i 's,java,`javaPathHelper -c terasology`,g' ${WRKSRC}/run_linux.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/run_linux.sh ${PREFIX}/bin/terasology
	${INSTALL_DATA_DIR} ${PREFIX}/share/terasology/{libs,modules,natives}
	${INSTALL_DATA} ${WRKSRC}/libs/* ${PREFIX}/share/terasology/libs
	${INSTALL_DATA} ${WRKSRC}/modules/* ${PREFIX}/share/terasology/modules

.include <bsd.port.mk>
