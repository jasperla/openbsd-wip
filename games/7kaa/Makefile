# $OpenBSD$

COMMENT-main = 		real-time startegy game
COMMENT-data = 		7kaa data files

DISTNAME =		7kaa-source-2.14.4
PKGNAME-main = 		${DISTNAME:S/-source//}
PKGNAME-data = 		${DISTNAME:S/source/data/}

MULTI_PACKAGES = 	-main -data

CATEGORIES = 		games x11

HOMEPAGE = 		http://7kfans.com/

MAINTAINER = 		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =    Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =  Yes

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=skfans/}
EXTRACT_SUFX = 		.tar.bz2

WANTLIB-main += SDL SDL_net c m openal pthread stdc++
WANTLIB-data =

LIB_DEPENDS-main = 	audio/openal \
			devel/sdl-net
RUN_DEPENDS-main = 	games/7kaa,-data

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/share/7kaa
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-pthread"

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME-main}

PKG_ARCH-data = 	*

post-install:
	echo "#!/bin/sh" > ${WRKSRC}/7kaa.sh
	echo "cd ${LOCALBASE}/share/7kaa; ./7kaa \$$*; exit \$$? " >> ${WRKSRC}/7kaa.sh
	${INSTALL_SCRIPT} ${WRKSRC}/7kaa.sh ${PREFIX}/bin/7kaa

.include <bsd.port.mk>
