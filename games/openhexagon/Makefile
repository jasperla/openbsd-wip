# $OpenBSD$

COMMENT =	free open-source clone of the game Super Hexagon
DISTNAME =	openhexagon-2.0rc2
CATEGORIES =	games x11

HOMEPAGE =	https://vittorioromeo.info/projects.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Academic Free License 3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} c m sfml-audio
WANTLIB += sfml-graphics sfml-network sfml-system sfml-window z

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.3

LIB_DEPENDS =	multimedia/sfml

# No good install routine.
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openhexagon
	${INSTALL_PROGRAM} ${WRKBUILD}/SSVOpenHexagon ${PREFIX}/share/openhexagon
	${INSTALL_DATA_DIR} ${PREFIX}/share/openhexagon/{Assets,ConfigOverrides,Packs}
	cd ${WRKSRC}/_RELEASE/Assets && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/openhexagon/Assets/{}" \;
	cd ${WRKSRC}/_RELEASE/Assets && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/openhexagon/Assets/{}" \;
	cd ${WRKSRC}/_RELEASE/ConfigOverrides && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/openhexagon/ConfigOverrides/{}" \;
	cd ${WRKSRC}/_RELEASE/ConfigOverrides && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/openhexagon/ConfigOverrides/{}" \;
	cd ${WRKSRC}/_RELEASE/Packs && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/openhexagon/Packs/{}" \;
	cd ${WRKSRC}/_RELEASE/Packs && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/openhexagon/Packs/{}" \;
	echo "#!/bin/sh" > ${WRKSRC}/openhexagon.sh
	echo "cd ${LOCALBASE}/share/openhexagon; ./SSVOpenHexagon \$$*; exit \$$? " >> ${WRKSRC}/openhexagon.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openhexagon
	${INSTALL_DATA} ${WRKSRC}/_RELEASE/{config,scores,users}.json \
		${PREFIX}/share/examples/openhexagon
	${INSTALL_SCRIPT} ${WRKSRC}/openhexagon.sh ${PREFIX}/bin/openhexagon

.include <bsd.port.mk>
