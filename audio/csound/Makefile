# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	an extensible sound processing language

GH_ACCOUNT =	csound
GH_PROJECT =	csound
GH_TAGNAME =	6.06.0

SHARED_LIBS +=	csnd6                     0.0 # 6.0
SHARED_LIBS +=	csound64                  0.0 # 6.0

CATEGORIES =	audio

HOMEPAGE =	https://csound.github.io/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama c curl
WANTLIB += fltk fltk_images fluidsynth fontconfig jack jpeg lo
WANTLIB += m png pthread pulse pulse-simple ${MODPY_WANTLIB}
WANTLIB += samplerate sndfile z luajit-${MODLUA_VERSION}

MODULES =		devel/cmake \
			devel/gettext \
			gcc4 \
			lang/lua \
			lang/python

MODGCC4_LANGS =         c c++
MODGCC4_ARCHS =         *

RUN_DEPENDS =		lang/luajit

BUILD_DEPENDS =		audio/flac \
			audio/libogg \
			audio/portaudio-svn \
			devel/boost

LIB_DEPENDS =		audio/jack \
			audio/fluidsynth \
			audio/liblo \
			audio/libsndfile \
			audio/pulseaudio \
			net/curl \
			x11/fltk

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
