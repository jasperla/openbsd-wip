# $OpenBSD$

COMMENT-main =		real-time startegy game
COMMENT-data = 		7kaa data files

CATEGORIES = 		games x11

MULTI_PACKAGES = 	-main -data
DISTNAME =		7kaa-2.14.3
PKGNAME-main =		${DISTNAME}
PKGNAME-data = 		7kaa-data-2.13

HOMEPAGE = 		http://7kfans.com/

MAINTAINER = 		Kirill Bychkov <yason@linklevel.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main += SDL SDL_net c m openal pthread stdc++

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=skfans/}
DISTFILES = 		7kaa-source-2.14.3.tar.bz2 \
			7kaa-data-2.13.tar.bz2

LIB_DEPENDS-main =	audio/openal \
			devel/sdl-net
RUN_DEPENDS-main = 	games/7kaa,-data

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/share/7kaa
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-pthread"

NO_REGRESS =		Yes

WRKDIST-main =		${WRKDIR}/${PKGNAME}

post-install:
	echo "#!/bin/sh" > ${WRKSRC}/7kaa.sh
	echo "cd ${LOCALBASE}/share/7kaa; ./7kaa \$$*; exit \$$? " >> ${WRKSRC}/7kaa.sh
	${INSTALL_SCRIPT} ${WRKSRC}/7kaa.sh ${PREFIX}/bin/7kaa

	${INSTALL_DATA_DIR} ${PREFIX}/share/7kaa
	cd ${WRKDIR}/7kaa && pax -rw . ${PREFIX}/share/7kaa

PKG_ARCH-data =              *

.include <bsd.port.mk>
