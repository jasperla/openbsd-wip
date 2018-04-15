# $OpenBSD$

# Needs a better COMMENT
COMMENT =	open source engine remake for some mid-90s DOS games
DISTNAME =	xlengine-0.2.0
CATEGORIES =	games x11

# Switch to GH_TAGNAME when 0.2.0 is actually released
GH_ACCOUNT =	Mindwerks
GH_PROJECT =	XLEngine
#GH_TAGNAME =	0.2.0
GH_COMMIT =	148e500d4d3619b0a31299ad5d763e19429bd9b3

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL SDL2 c enet m

# C++14
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		graphics/DevIL \
		graphics/glew \
		net/enet

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

# No upstream install target
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/XLEngine ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/xlengine
	${INSTALL_DATA} ${WRKBUILD}/{Blood,Dagger,Dark,Outlaws}XL.so \
		${PREFIX}/libexec/xlengine

.include <bsd.port.mk>
