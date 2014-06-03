# $OpenBSD: Makefile,v 1.8 2013/12/02 16:25:08 espie Exp $

GH_VER =	0.2
COMMENT =	free interpreter for RPG Maker 2000/2003 and EasyRPG games
DISTNAME =	easyrpg-${GH_VER}
DISTFILES =	${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}
CATEGORIES =	games x11

HOMEPAGE =	https://easy-rpg.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL SDL_mixer c expat freetype lcf m pixman-1 png pthread
WANTLIB += pthread-stubs z

MASTER_SITES =	https://github.com/EasyRPG/Player/archive/

MODULES +=	converters/libiconv \
		lang/python \
		lang/ruby \
		gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

# iconv is deprecated with ruby>1.8
MODRUBY_REV =	1.8

BUILD_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/boost

LIB_DEPENDS =	devel/sdl-mixer \
		games/liblcf \
		graphics/png

# Sadly, this is needed for midi playback.
RUN_DEPENDS =	audio/timidity

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12

CXXFLAGS +=	-g

# make test seems bogus, disabling it.
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Player-${GH_VER}

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
