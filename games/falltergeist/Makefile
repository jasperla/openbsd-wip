# $OpenBSD$

COMMENT =	open source cross-platform Fallout 2 game engine
DISTNAME =	falltergeist-0.3.0.1
CATEGORIES =	games x11

HOMEPAGE =	https://falltergeist.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

GH_ACCOUNT =	falltergeist
GH_PROJECT =	falltergeist
GH_COMMIT =	b57b6119a6b56f7afc1b8e3dffe1faaddebfcb9e

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 SDL2_image SDL2_mixer
WANTLIB += c m z

# Needs C++14
COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	graphics/glm

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer \
		graphics/glew

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

# Upstream provides no install target.
do-install:
	${SUBST_CMD} -c -m 555 ${FILESDIR}/falltergeist \
		${PREFIX}/bin/falltergeist
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/package/falltergeist.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/falltergeist/data
	${INSTALL_PROGRAM} ${WRKBUILD}/falltergeist \
		${PREFIX}/share/falltergeist
	cd ${WRKSRC}/data && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/falltergeist/data/{}" \;
	cd ${WRKSRC}/data && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/falltergeist/data/{}" \;

.include <bsd.port.mk>
