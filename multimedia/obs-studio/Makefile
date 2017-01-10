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

WANTLIB += GL ICE Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras SM X11
WANTLIB += X11-xcb Xcomposite Xext Xfixes avcodec avdevice avfilter
WANTLIB += avformat avutil c curl dbus-1 fdk-aac fontconfig freetype
WANTLIB += jansson m pthread speexdsp swresample swscale x264
WANTLIB += xcb xcb-shm xcb-xfixes xcb-xinerama z

MODULES=	devel/cmake \
		gcc4 \
		x11/qt5
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS=	audio/fdk-aac \
		devel/jansson \
		graphics/ffmpeg \
		net/curl \
		x11/qt5/qtx11extras

NO_TEST=	Yes

.include <bsd.port.mk>
