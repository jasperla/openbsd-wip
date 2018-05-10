# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	an extensible sound processing language

GH_ACCOUNT =	csound
GH_PROJECT =	csound
GH_TAGNAME =	6.10.0

SHARED_LIBS +=	csnd6                     1.0 # 6.10
SHARED_LIBS +=	csound64                  1.0 # 6.10

CATEGORIES =	audio

HOMEPAGE =	https://csound.github.io/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext c curl fltk fltk_forms
WANTLIB += fltk_images m png portaudio pulse pulse-simple python2.7
WANTLIB += samplerate sndfile z

MODULES =		devel/cmake \
			lang/lua \
			lang/python

RUN_DEPENDS =		lang/luajit

BUILD_DEPENDS =		audio/flac \
			audio/libogg \
			devel/bison \
			devel/boost \
			devel/gettext-tools

LIB_DEPENDS =		audio/jack \
			audio/fluidsynth \
			audio/libsamplerate \
			audio/libsndfile \
			audio/portaudio-svn \
			audio/pulseaudio \
			net/curl \
			x11/fltk

COMPILER =		base-clang ports-gcc

SUBST_VARS +=		LIBcsnd6_VERSION
SUBST_VARS +=		LOCALBASE
SUBST_VARS +=		X11BASE

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -std=c++11 -I${X11BASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \

pre-configure:
	${SUBST_CMD} ${WRKDIST}/pluginSDK/SConstruct \
		${WRKDIST}/InOut/CMakeLists.txt \
		${WRKDIST}/CMakeLists.txt


.include <bsd.port.mk>
