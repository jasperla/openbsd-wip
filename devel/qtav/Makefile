# $OpenBSD$

COMMENT =	FFmpeg-based Qt multimedia framework

V =		1.12.0
PKGNAME =	qtav-${V}

GH_ACCOUNT =	wang-bin
GH_PROJECT =	QtAV
GH_TAGNAME =	v${V}

# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
SHARED_LIBS =	QtAV		0.0
SHARED_LIBS +=	QtAVWidgets	0.0

CATEGORIES =	devel multimedia

HOMEPAGE =	http://www.qtav.org/

# LGPLv2.1 for libraries
# GPLv3 for executables
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Qml Qt5Quick Qt5Sql Qt5Widgets X11 Xext Xv ass avcodec
WANTLIB += avdevice avfilter avformat avresample avutil c m openal
WANTLIB += pulse swresample swscale

MODULES =		devel/qmake x11/qt5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/openal \
			audio/pulseaudio \
			graphics/ffmpeg \
			x11/qt5/qtdeclarative

CONFIGURE_ENV +=	TRUEPREFIX=${TRUEPREFIX}

NO_TESTS =		Yes

.include <bsd.port.mk>
