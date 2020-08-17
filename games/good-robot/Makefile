# $OpenBSD$

COMMENT =	procedurally generated shoot-em-up
DISTNAME =	good-robot-1pl20200816
CATEGORIES =	games x11

GH_ACCOUNT =	arvindrajayadav
GH_PROJECT =	Good-Robot
GH_COMMIT =	c9a0a5f50793acbe7af312fccac48ee035498d1e

HOMEPAGE =	https://pyrodactyl.com/good-robot/
MAINTAINER =	Not me <dont-put-me@not.me>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL SDL2 alut boost_filesystem-mt
WANTLIB += boost_system-mt c freetype m openal
WANTLIB += lib/steamworks-nosteam/steamwrapper

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/freealut \
		devel/boost \
		devel/sdl2 \
		games/steamworks-nosteam \
		graphics/DevIL \
		graphics/glew

# Default CXXFLAGS breaks things--causes CMake to insert a spurious ;
CONFIGURE_ARGS =	-DSTEAMWORKS_LIBRARY="${LOCALBASE}/lib/steamworks-nosteam/libsteamwrapper.so.0.0" \
			-DCMAKE_CXX_FLAGS="" \
			-DCMAKE_EXE_LINKER_FLAGS="-rpath ${LOCALBASE}/lib/steamworks-nosteam"

NO_TEST =	Yes

# No install routine
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/good_robot ${PREFIX}/bin

.include <bsd.port.mk>
