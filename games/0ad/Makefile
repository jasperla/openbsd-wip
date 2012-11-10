# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		historical real-time strategy game

PKGNAME =		0ad-0.0.11

CATEGORIES =		games

HOMEPAGE =		http://wildfiregames.com/0ad/

# GPL, MIT for libs, CC-BY-SA for data
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	GL SDL X11 Xcursor boost_system c curl enet execinfo
WANTLIB +=	jpeg m nvtt openal png pthread stdc++ vorbisfile xml2
WANTLIB +=	z

MASTER_SITES =		http://releases.wildfiregames.com/
DISTFILES =		${PKGNAME}-alpha-unix-build.tar.gz \
			${PKGNAME}-alpha-unix-data.tar.gz

BUILD_DEPENDS =		shells/bash
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/libexecinfo \
			devel/sdl \
			devel/spidermonkey \
			graphics/nvtt \
			net/curl \
			net/enet \
			textproc/libxml

MAKE_FLAGS =		SILENT=

USE_GMAKE =		Yes
CONFIGURE_ARGS +=	--with-system-nvtt \
			--with-system-enet \
			--datadir=${PREFIX}/share/0ad \
			--with-system-mozjs185 \
			--libdir=${PREFIX}/lib
CONFIGURE_ENV =		MAKE=${MAKE_PROGRAM}

# atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas


WRKDIST =		${WRKDIR}/${PKGNAME}-alpha
WRKSRC =		${WRKDIST}/build/workspaces/gcc

do-configure:
	cd ${WRKDIST}/build/workspaces && \
		${CONFIGURE_ENV} ./update-workspaces.sh ${CONFIGURE_ARGS}

pre-build:
	perl -pi -e 's#"js/#"js-1.8.5/#' \
		${WRKDIST}/source/scriptinterface/ScriptTypes.h \
		${WRKDIST}/source/scriptinterface/ScriptInterface.h \
		${WRKDIST}/source/scriptinterface/AutoRooters.h \
		${WRKDIST}/source/simulation2/system/InterfaceScripted.h \
		${WRKDIST}/source/simulation2/scripting/MessageTypeConversions.cpp \
		${WRKDIST}/source/scriptinterface/ScriptExtraHeaders.h \
		${WRKDIST}/source/simulation2/serialization/StdDeserializer.cpp \
		${WRKDIST}/source/simulation2/system/ParamNode.cpp \
		${WRKDIST}/source/scriptinterface/ScriptStats.cpp \
		${WRKDIST}/source/scriptinterface/ScriptVal.cpp \
		${WRKDIST}/source/gui/scripting/GuiScriptConversions.cpp \
		${WRKDIST}/source/gui/scripting/ScriptFunctions.cpp \
		${WRKDIST}/source/scriptinterface/tests/test_ScriptConversions.h \
		${WRKDIST}/source/scriptinterface/tests/test_ScriptVal.h \

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad
	${INSTALL_DATA} ${WRKDIST}/binaries/system/lib* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/binaries/system/pyrogenesis ${PREFIX}/bin

do-regress:
	cd ${WRKDIST}/binaries/system && ./test

.include <bsd.port.mk>
