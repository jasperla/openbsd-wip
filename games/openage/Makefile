# $OpenBSD $

COMMENT =		free open source clone of the Age of Empires II engine

DISTNAME =		milestone02
PKGNAME =		openage-${DISTNAME}

# for libtool-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =		???

CATEGORIES =		games
HOMEPAGE =		http://openage.sft.mx
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GNU GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GL GLEW GLU ICE SDL2 SM X11 Xext c m pthread

# where the source files and patches can be fetched
#
MASTER_SITES =		https://github.com/SFTtech/openage/archive/

MODGCC4_ARCHS=          amd64
MODGCC4_LANGS=          c++

MODULES =		devel/cmake \
			gcc4
BUILD_DEPENDS =		audio/opus \
			devel/doxygen,-main \
			devel/llvm \
			devel/sdl2 \
			devel/sdl2-image \
			graphics/freeglut \
			graphics/ftgl \
			graphics/glew \
			lang/gcc/4.6,-c++ \
			lang/gcc/4.8,-main

RUN_DEPENDS =		graphics/py-Imaging,-main
LIB_DEPENDS =		graphics/glew \
			devel/sdl2
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
#			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
#			CFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
#CONFIGURE_ARGS =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
#			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
#			CFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
#CONFIGURE_ENV +=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
#			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
#			-DFREETYPE_INCLUDE_DIR=${X11BASE}/include/freetype2
CONFIGURE_ARGS +=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DFREETYPE_INCLUDE_DIR=${X11BASE}/include/freetype2

#CPPFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
#LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib
#CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include

#CFLAGS =		???
#CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/openage-milestone02/
WRKSRC =		${WRKDIR}/openage-milestone02/
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/openage ${PREFIX}/bin

.include <bsd.port.mk>
