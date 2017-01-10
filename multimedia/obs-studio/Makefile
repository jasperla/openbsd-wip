# $OpenBSD$

COMMENT=	software for live-streaming and screen recording

GH_ACCOUNT=	jp9000
GH_PROJECT=	obs-studio
GH_TAGNAME=	17.0.0

SHARED_LIBS=	obs			0.0 \
		obs-frontend-api	0.0 \
		obs-opengl		0.0 \
		obsglad			0.0

CATEGORIES=	multimedia

HOMEPAGE=	https://obsproject.com/

MAINTAINER=	Jordon <openbsd@sirjorj.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras X11 X11-xcb
WANTLIB += avcodec avdevice avfilter avformat avutil c curl dbus-1
WANTLIB += fontconfig freetype jansson m pthread speexdsp swresample
WANTLIB += swscale x264 xcb z

MODULES=	devel/cmake \
		gcc4 \
		x11/qt5
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS=	devel/jansson \
		graphics/ffmpeg \
		net/curl \
		x11/qt5/qtx11extras

NO_TEST=	Yes

.include <bsd.port.mk>
