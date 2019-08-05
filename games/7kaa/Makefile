# $OpenBSD$

COMMENT-main = 		real-time strategy game
COMMENT-data = 		7kaa data files

V = 			2.15.2
DISTNAME = 		7kaa-${V}
PKGNAME-main = 		${DISTNAME}
PKGNAME-data = 		7kaa-data-${V}

MASTER_SITES = 		https://github.com/the3dfxdude/7kaa/releases/download/v${V}/
EXTRACT_SUFX = 		.tar.xz

MULTI_PACKAGES = 	-main -data

CATEGORIES = 		games

HOMEPAGE = 		http://7kfans.com/

MAINTAINER = 		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE =  Yes

WANTLIB-main += ${COMPILER_LIBCXX} SDL2 c curl enet iconv intl m openal pthread
WANTLIB-data =

BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext,-tools \
			devel/libtool

LIB_DEPENDS-main = 	audio/openal \
			devel/gettext \
			devel/sdl2 \
			net/curl \
			net/enet
RUN_DEPENDS-main = 	games/7kaa,-data

#SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/share/7kaa
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-pthread"
AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.11

NO_TEST =		Yes

PKG_ARCH-data = 	*

post-install:
	echo "#!/bin/sh" > ${WRKSRC}/7kaa.sh
	echo "cd ${LOCALBASE}/share/7kaa; ./7kaa \$$*; exit \$$? " >> ${WRKSRC}/7kaa.sh
	${INSTALL_SCRIPT} ${WRKSRC}/7kaa.sh ${PREFIX}/bin/7kaa

.include <bsd.port.mk>
