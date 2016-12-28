# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		music files for colobot

DISTNAME =		colobot-music_ogg_$V-alpha
PKGNAME =		colobot-music-$V

MASTER_SITES =		https://colobot.info/files/music/

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/colobot/music
	${INSTALL_DATA} ${WRKDIST}/*.ogg ${PREFIX}/share/colobot/music

.include <bsd.port.mk>
