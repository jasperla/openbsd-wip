# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		historical real-time strategy game

DISTNAME =		0ad-${V}-alpha-unix-build
PKGNAME =		0ad-${V}

WANTLIB += GL SDL X11 Xcursor boost_filesystem c curl enet execinfo
WANTLIB += gloox iconv icui18n icuuc jpeg m miniupnpc mozjs-24
WANTLIB += openal png pthread vorbisfile xml2 z

BUILD_DEPENDS =		shells/bash

BUILD_DEPENDS +=	archivers/zip
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/libexecinfo \
			devel/sdl \
			devel/spidermonkey \
			graphics/jpeg \
			graphics/png \
			net/curl \
			net/enet \
			net/gloox \
			net/miniupnp/miniupnpc \
			textproc/icu4c \
			textproc/libxml
RUN_DEPENDS =		games/0ad/data
MODULES =		gcc4 \
			lang/python
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	../../../libraries/source/cxxtest-4.3/bin/cxxtestgen
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

MAKE_FLAGS =		SILENT= \
			CXX="${CXX}"

PATCHORIG =		.orig.port

USE_GMAKE =		Yes
CONFIGURE_ARGS +=	--without-nvtt \
			--with-system-enet \
			--with-system-miniupnpc \
			--with-system-mozjs24 \
			--datadir=${PREFIX}/share/0ad \
			--libdir=${PREFIX}/lib \
			--minimal-flags
CONFIGURE_ENV =		MAKE=${MAKE_PROGRAM}

# XXX atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas


WRKSRC =		${WRKDIST}/build/workspaces/gcc

do-configure:
	cd ${WRKDIST}/build/workspaces && \
		${SETENV} ${CONFIGURE_ENV} ./update-workspaces.sh ${CONFIGURE_ARGS}

do-build:
	cd ${WRKDIST}/libraries/source/fcollada/src && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
	cd ${WRKSRC} &&\
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad
	${INSTALL_DATA} ${WRKDIST}/binaries/system/lib* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/binaries/system/pyrogenesis ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/build/resources/0ad.sh ${PREFIX}/bin/0ad
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.png \
		${PREFIX}/share/pixmaps/

# most tests fail without nvtt
NO_TEST =		Yes
#do-test:
#	cd ${WRKDIST}/binaries/system && ./test

.include <bsd.port.mk>
