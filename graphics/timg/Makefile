# $OpenBSD$

COMMENT =		terminal image viewer
GH_ACCOUNT =		hzeller
GH_PROJECT =		timg
GH_TAGNAME =		v1.4.3
CATEGORIES =		graphics

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

WANTLIB += ${COMPILER_LIBCXX} GraphicsMagick GraphicsMagick++
WANTLIB += avcodec avdevice avformat avutil c exif m swscale turbojpeg
WANTLIB += z

LIB_DEPENDS =		graphics/GraphicsMagick \
			graphics/ffmpeg \
			graphics/jpeg \
			graphics/libexif

NO_TEST =		Yes

.include <bsd.port.mk>
