# $OpenBSD$

COMMENT =		space exploration and combat game similar to Escape Velocity

VERSION =		0.8.7
DISTNAME =		endless-sky-${VERSION}

CATEGORIES =		games

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW SDL2 c jpeg m openal png pthread

GH_ACCOUNT =		endless-sky
GH_PROJECT =		endless-sky
GH_TAGNAME =		${VERSION}

MODULES =		devel/scons \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/glew \
			graphics/jpeg \
			graphics/png

NO_TEST =		Yes

post-patch:
	sed -i "s,/usr/local,${TRUEPREFIX}," ${WRKSRC}/source/Files.cpp

.include <bsd.port.mk>
