# $OpenBSD $

COMMENT =		free open source clone of the Age of Empires II engine

DISTNAME =		master
PKGNAME =		openage-${DISTNAME}-1

CATEGORIES =		games
HOMEPAGE =		http://openage.sft.mx/
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GNU GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GL GLEW GLU ICE SDL2 SM X11 Xext c m pthread

MASTER_SITES =		https://github.com/SFTtech/openage/archive/

MODGCC4_ARCHS=          amd64
MODGCC4_LANGS=          c++

MODULES =		devel/cmake \
			gcc4
BUILD_DEPENDS =		audio/opus \
			audio/opusfile \
			devel/doxygen,-main \
			devel/glib \
			devel/ninja \
			devel/sdl2 \
			devel/sdl2-image \
			graphics/freeglut \
			graphics/ftgl \
			graphics/glew \
			lang/gcc/4.8,-main \
			lang/python/3.4

#RUN_DEPENDS =		graphics/py-Imaging,-main
LIB_DEPENDS =		graphics/glew \
			devel/sdl2

CONFIGURE_ENV +=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DOPUSFILE_INCLUDE_DIR=${LOCALBASE}/include/opus
CONFIGURE_ARGS +=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DOPUSFILE_INCLUDE_DIR=${LOCALBASE}/include/opus \
			-DFREETYPE_INCLUDE_DIR=${X11BASE}/include/freetype2

WRKDIST =		${WRKDIR}/openage-master/
WRKSRC =		${WRKDIR}/openage-master/

.include <bsd.port.mk>
