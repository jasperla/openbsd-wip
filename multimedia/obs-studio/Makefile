COMMENT=	software for live-streaming and screen recording

GH_ACCOUNT=	obsproject
GH_PROJECT=	obs-studio
GH_TAGNAME=	27.1.1

SHARED_LIBS=	obs			0.0 \
		obs-frontend-api	0.0 \
		obs-opengl		0.0 \
		obsglad			0.0

CATEGORIES=	multimedia

HOMEPAGE=	https://obsproject.com/

MAINTAINER=	Jordon <openbsd@sirjorj.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 X11-xcb Xcomposite Xext Xfixes
WANTLIB += avcodec avdevice avfilter avformat avutil c curl dbus-1
WANTLIB += fdk-aac fontconfig freetype jansson m mbedcrypto mbedtls
WANTLIB += mbedx509 pulse sndio speexdsp swresample swscale v4l2 x264
WANTLIB += xcb xcb-randr xcb-shm xcb-xfixes xcb-xinerama xcb-xinput z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		x11/qt5

LIB_DEPENDS=	audio/fdk-aac \
		audio/pulseaudio \
		devel/jansson \
		graphics/ffmpeg \
		multimedia/libv4l \
		net/curl \
		security/polarssl \
		x11/qt5/qtsvg,-main \
		x11/qt5/qtx11extras

CONFIGURE_ARGS =	-DCMAKE_VERBOSE_MAKEFILE=true \
			-DENABLE_PIPEWIRE=OFF \
			-DBUILD_BROWSER=OFF \
			-DBUILD_VST=OFF

NO_TEST=	Yes

#post-extract:
#	cp -R ${FILESDIR}/sndio ${WRKSRC}/plugins/
#	cp ${FILESDIR}/FindSndio.cmake ${WRKSRC}/cmake/Modules/

.include <bsd.port.mk>
