# $OpenBSD$

COMMENT =	FFmpeg-based Qt multimedia framework

V =		1.8.0
PKGNAME =	qtav-${V}

GH_ACCOUNT =	wang-bin
GH_PROJECT =	QtAV
GH_TAGNAME =	v${V}

# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
SHARED_LIBS =	QtAV		0.0
SHARED_LIBS +=	QtAVWidgets	0.0

CATEGORIES =	devel multimedia

HOMEPAGE =	http://www.qtav.org/

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1 for libraries
# GPLv3 for executables
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5Qml Qt5Quick
WANTLIB += Qt5Widgets Xv ass avcodec avdevice avfilter avformat
WANTLIB += avresample avutil c m openal portaudio pthread pulse
WANTLIB += swresample swscale

MODULES =		devel/qmake x11/qt5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		graphics/ffmpeg \
			audio/openal \
			audio/portaudio-svn \
			audio/pulseaudio \
			x11/qt5/qtdeclarative

CONFIGURE_ENV +=	TRUEPREFIX=${TRUEPREFIX}

# Actually, there are many tests; many of them require
# having external video/subtitles files, though.
TEST_IS_INTERACTIVE =	X11
TEST_LIST =		"ao -ao Pulse" \
			"ao -ao PortAudio" \
			"ao -ao OpenAL"

post-install:
	rm -Rf ${PREFIX}/share/doc/QtAV-examples-common
	mv ${PREFIX}/share/doc/common ${PREFIX}/share/doc/QtAV-examples-common

.include <bsd.port.mk>
