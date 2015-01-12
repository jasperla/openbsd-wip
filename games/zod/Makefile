# $OpenBSD$

COMMENT = 		multiplayer oriented remake of the game Z

V = 			2011-09-06
DISTNAME = 		zod_linux-${V}
PKGNAME = 		zod-${V:S/-//g}

CATEGORIES =		games x11

HOMEPAGE =		http://zod.sourceforge.net/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf c m mysqlclient pthread
WANTLIB += stdc++ wx_base wx_base_net wx_base_odbc wx_base_xml
WANTLIB += wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zod/}

LIB_DEPENDS = 		databases/mariadb,-main \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			x11/wxWidgets
			
MAKE_FILE = 		${WRKSRC}/makefile

ALL_TARGET = 		main map_editor

NO_TEST =		Yes

WRKDIST = 		${WRKDIR}/zod_engine
WRKSRC = 		${WRKDIST}/zod_src

post-extract:
	@find ${WRKSRC} -name Thumbs.db -exec rm {} \;
post-build:
	cd ${WRKDIST}/zod_launcher_src && ${MAKE}
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zod/
.for i in zod zod_map_editor
	${INSTALL_PROGRAM} ${WRKSRC}/$i ${PREFIX}/share/zod/
	@echo "#!/bin/sh" > ${WRKSRC}/$i.sh
	@echo "cd $(LOCALBASE)/share/zod/; ./$i \$$*; exit \$$?" >> ${WRKSRC}/$i.sh
	$(INSTALL_SCRIPT) ${WRKSRC}/$i.sh $(PREFIX)/bin/$i
.endfor
	${INSTALL_PROGRAM} ${WRKDIST}/zod_launcher_src/zod_launcher \
		${PREFIX}/share/zod/
	@echo "#!/bin/sh" > ${WRKSRC}/zod_launcher.sh
	@echo "cd $(LOCALBASE)/share/zod/; ./zod_launcher \$$*; exit \$$?" >> ${WRKSRC}/zod_launcher.sh
	$(INSTALL_SCRIPT) ${WRKSRC}/zod_launcher.sh $(PREFIX)/bin/zod_launcher
	${INSTALL_DATA_DIR} ${PREFIX}/share/zod/assets
	cd ${WRKDIST}/assets && pax -rw . ${PREFIX}/share/zod/assets
#	${INSTALL_DATA_DIR} ${PREFIX}/share/zod/maps
	${INSTALL_DATA} ${WRKDIST}/*.map ${PREFIX}/share/zod/
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/zod/

.include <bsd.port.mk>
