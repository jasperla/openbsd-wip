# $OpenBSD$

COMMENT =	free open-source NLE video editor
CATEGORIES =	multimedia x11

GH_ACCOUNT =	olive-editor
GH_PROJECT =	olive
GH_TAGNAME =	0.1.2

HOMEPAGE =	https://www.olivevideoeditor.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5OpenGL Qt5Svg Qt5Widgets avcodec avfilter
WANTLIB += avformat avutil c m swresample swscale

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	multimedia/frei0r-plugins

LIB_DEPENDS =	graphics/ffmpeg \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg

RUN_DEPENDS =	${BUILD_DEPENDS} \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
