# $OpenBSD$

V =		0.3.1
COMMENT =	open source reimplementation of the Diablo 1 engine
DISTNAME =	freeablo-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://freeablo.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://devio.us/~bcallah/source/

WANTLIB += ${COMPILER_LIBCXX} GL GLU Qt5Core Qt5Gui Qt5Widgets
WANTLIB += SDL2 SDL2_image SDL2_mixer boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_serialization-mt
WANTLIB += boost_system-mt bz2 c enet m png z

MODULES =	devel/cmake \
		lang/python \
		x11/qt5

LIB_DEPENDS =	archivers/bzip2 \
		devel/boost \
		devel/sdl2-image \
		devel/sdl2-mixer \
		net/enet

# Ninja doesn't get set up properly by cmake... :(
USE_NINJA =	No

# Upstream says you need this.
pre-configure:
	cd ${WRKBUILD} && ln -s ${WRKSRC}/resources

# Upstream provides no install routine.
do-install:
	${SUBST_CMD} -c -m 555 ${FILESDIR}/freeablo ${PREFIX}/bin/freeablo
	${INSTALL_DATA_DIR} ${PREFIX}/share/freeablo/resources
	${INSTALL_PROGRAM} ${WRKBUILD}/{freeablo,launcher} \
		${PREFIX}/share/freeablo
	cd ${WRKSRC}/resources && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/freeablo/resources/{}" \;
	cd ${WRKSRC}/resources && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/freeablo/resources/{}" \;

.include <bsd.port.mk>
