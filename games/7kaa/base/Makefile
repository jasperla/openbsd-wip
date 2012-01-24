# $OpenBSD$

COMMENT =		real-time startegy game

DISTNAME =		7kaa-source-2.14.3
PKGNAME = 		${DISTNAME:S/-source//}

WANTLIB += SDL SDL_net c m openal pthread stdc++

LIB_DEPENDS =		audio/openal \
			devel/sdl-net
RUN_DEPENDS = 		games/7kaa/data

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/share/7kaa
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-pthread"

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}

post-install:
	echo "#!/bin/sh" > ${WRKSRC}/7kaa.sh
	echo "cd ${LOCALBASE}/share/7kaa; ./7kaa \$$*; exit \$$? " >> ${WRKSRC}/7kaa.sh
	${INSTALL_SCRIPT} ${WRKSRC}/7kaa.sh ${PREFIX}/bin/7kaa

.include <bsd.port.mk>
