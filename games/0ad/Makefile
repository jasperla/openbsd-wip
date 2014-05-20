# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		historical real-time strategy game

PKGNAME =		0ad-0.0.16

CATEGORIES =		games

HOMEPAGE =		http://play0ad.com/

#SHARED_LIBS +=  mozjs185-ps-debug         1.0 # 1.0
#SHARED_LIBS +=  mozjs185-ps-release       1.0 # 1.0

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL X11 Xcursor boost_filesystem c curl enet execinfo
WANTLIB += jpeg m openal png pthread stdc++ vorbisfile xml2 z

MASTER_SITES =		http://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}
DISTFILES =		${PKGNAME}-alpha-unix-build.tar.gz \
			${PKGNAME}-alpha-unix-data.tar.gz

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
			textproc/libxml
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
			--libdir=${PREFIX}/lib
CONFIGURE_ENV =		MAKE=${MAKE_PROGRAM}

# XXX atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas


WRKDIST =		${WRKDIR}/${PKGNAME}-alpha
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

do-test:
	cd ${WRKDIST}/binaries/system && ./test

.include <bsd.port.mk>
