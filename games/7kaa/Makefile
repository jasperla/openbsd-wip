# $OpenBSD$

COMMENT-main = 		real-time startegy game
COMMENT-data = 		7kaa data files

GH_ACCOUNT = 		the3dfxdude
GH_PROJECT = 		7kaa
GH_TAGNAME = 		v2.14.5
PKGNAME-main = 		${DISTNAME}
PKGNAME-data = 		7kaa-data-${GH_TAGNAME:S/v//}

MULTI_PACKAGES = 	-main -data

CATEGORIES = 		games x11

HOMEPAGE = 		http://7kfans.com/

MAINTAINER = 		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =  Yes

WANTLIB-main += SDL2 c enet iconv intl m openal pthread stdc++
WANTLIB-data =

BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext-tools \
			devel/libtool

LIB_DEPENDS-main = 	audio/openal \
			devel/gettext \
			devel/sdl2 \
			net/enet
RUN_DEPENDS-main = 	games/7kaa,-data

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--bindir=${PREFIX}/share/7kaa
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-pthread"
AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.11

NO_TEST =		Yes

PKG_ARCH-data = 	*

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

post-install:
	echo "#!/bin/sh" > ${WRKSRC}/7kaa.sh
	echo "cd ${LOCALBASE}/share/7kaa; ./7kaa \$$*; exit \$$? " >> ${WRKSRC}/7kaa.sh
	${INSTALL_SCRIPT} ${WRKSRC}/7kaa.sh ${PREFIX}/bin/7kaa

.include <bsd.port.mk>
