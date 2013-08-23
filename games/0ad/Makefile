# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		historical real-time strategy game

PKGNAME =		0ad-0.0.13

CATEGORIES =		games

HOMEPAGE =		http://play0ad.com/

SHARED_LIBS +=  mozjs185-ps-debug         1.0 # 1.0
SHARED_LIBS +=  mozjs185-ps-release       1.0 # 1.0

# GPLv2+, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL X11 Xcursor boost_system c curl enet
WANTLIB += jpeg m nvtt openal png pthread stdc++
WANTLIB += z

MASTER_SITES =		http://releases.wildfiregames.com/ \
			${MASTER_SITE_SOURCEFORGE:=zero-ad/}
DISTFILES =		${PKGNAME}-alpha-unix-build.tar.gz \
			${PKGNAME}-alpha-unix-data.tar.gz

BUILD_DEPENDS =		shells/bash
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/libexecinfo \
			devel/sdl \
			graphics/nvtt \
			net/curl \
			net/enet \
			textproc/libxml

MAKE_FLAGS =		SILENT= \
			CXX="${CXX}"

PATCHORIG =		.orig.port

USE_GMAKE =		Yes
CONFIGURE_ARGS +=	--with-system-nvtt \
			--with-system-enet \
			--datadir=${PREFIX}/share/0ad \
			--libdir=${PREFIX}/lib
CONFIGURE_ENV =		MAKE=${MAKE_PROGRAM}

# atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas


WRKDIST =		${WRKDIR}/${PKGNAME}-alpha
WRKSRC =		${WRKDIST}/build/workspaces/gcc

do-configure:
	cd ${WRKDIST}/build/workspaces && \
		${CONFIGURE_ENV} ./update-workspaces.sh ${CONFIGURE_ARGS}

do-build:
	cd ${WRKDIST}/libraries/source/fcollada/src && \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
	cd ${WRKSRC} &&\
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad
	${INSTALL_DATA} ${WRKDIST}/binaries/system/lib* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/binaries/system/pyrogenesis ${PREFIX}/bin

do-test:
	cd ${WRKDIST}/binaries/system && ./test

.include <bsd.port.mk>
