# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		game of lonely space and adventure

V =			20140804
DISTNAME =		pioneer-0.${V}

CATEGORIES =		games

HOMEPAGE =		http://pioneerspacesim.net/

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL2 SDL2_image assimp c freetype m png pthread
WANTLIB += sigc-2.0 vorbisfile z

GH_ACCOUNT =		pioneerspacesim
GH_COMMIT =		c32a0519ce8ae6136883bae38ef6bd0943c5e355
GH_PROJECT =		pioneer
GH_TAGNAME =		${V}

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		audio/libvorbis \
			devel/libsigc++-2 \
			devel/sdl2-image \
			multimedia/assimp

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-no-optimise
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			PIONEER_DATA_DIR=${PREFIX}/share/pioneer/ \
			OPTIMIZE=

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh bootstrap

.include <bsd.port.mk>
