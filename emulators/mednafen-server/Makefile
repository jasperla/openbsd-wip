# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	network play server for Mednafen

DISTNAME =	mednafen-server-0.5.2

CATEGORIES =	emulators net

HOMEPAGE =	http://mednafen.fobby.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m stdc++

MASTER_SITES =	http://mednafen.fobby.net/releases/files/

WRKDIST =	${WRKDIR}/mednafen-server

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mednafen-server
	${INSTALL_DATA} ${WRKSRC}/*.conf ${PREFIX}/share/examples/mednafen-server

.include <bsd.port.mk>
