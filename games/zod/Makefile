# $OpenBSD$

COMMENT = 		multiplayer oriented remake of the game Z

V = 			2011-09-06
DISTNAME = 		zod_linux-${V}
PKGNAME = 		zod-${V:S/-//g}

CATEGORIES =		games x11

HOMEPAGE =		http://zod.sourceforge.net/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf c m mysqlclient pthread
WANTLIB += stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zod/}

LIB_DEPENDS = 		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			databases/mysql,-main

MAKE_FILE = 		${WRKSRC}/makefile

ALL_TARGET = 		main map_editor

NO_REGRESS =		Yes

WRKDIST = 		${WRKDIR}/zod_engine
WRKSRC = 		${WRKDIST}/zod_src

pre-install:
	@find ${WRKSRC} -name Thumbs.db -exec rm {} \;
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zod/
.for i in zod zod_map_editor
	${INSTALL_PROGRAM} ${WRKSRC}/$i ${PREFIX}/share/zod/
	@echo "#!/bin/sh" > ${WRKSRC}/$i.sh
	@echo "cd $(LOCALBASE)/share/zod/; ./$i \$$*; exit \$$?" >> ${WRKSRC}/$i.sh
	$(INSTALL_SCRIPT) ${WRKSRC}/$i.sh $(PREFIX)/bin/$i
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/zod/assets
	cd ${WRKDIST}/assets && pax -rw . ${PREFIX}/share/zod/assets
#	${INSTALL_DATA_DIR} ${PREFIX}/share/zod/maps
	${INSTALL_DATA} ${WRKDIST}/*.map ${PREFIX}/share/zod/
	${INSTALL_DATA} ${WRKDIST}/*list.txt ${PREFIX}/share/zod/

.include <bsd.port.mk>
