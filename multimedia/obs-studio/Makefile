COMMENT=	software for live-streaming and screen recording

GH_ACCOUNT=	obsproject
GH_PROJECT=	obs-studio
GH_TAGNAME=	27.2.4

SHARED_LIBS=	obs			0.0 \
		obs-frontend-api	0.0 \
		obs-opengl		0.0 \
		obsglad			0.0

CATEGORIES=	multimedia

HOMEPAGE=	https://obsproject.com/

MAINTAINER=	Jordon <openbsd@sirjorj.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml SM X11 X11-xcb Xcomposite Xext
WANTLIB += Xfixes avcodec avdevice avfilter avformat avutil c curl
WANTLIB += fdk-aac fontconfig freetype gio-2.0 jansson luajit-5.1 m
WANTLIB += mbedcrypto mbedtls mbedx509 pulse python3.9 rnnoise sndio
WANTLIB += speexdsp swresample swscale v4l2 wayland-client wayland-egl
WANTLIB += x264 xcb xcb-composite xcb-damage xcb-dri2 xcb-ewmh xcb-glx
WANTLIB += xcb-icccm xcb-image xcb-keysyms xcb-randr xcb-render
WANTLIB += xcb-render-util xcb-shape xcb-shm xcb-sync xcb-util
WANTLIB += xcb-xfixes xcb-xinerama xcb-xinput xcb-xtest xcb-xv
WANTLIB += xkbcommon z


COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		x11/qt5

LIB_DEPENDS=	audio/fdk-aac \
		audio/pulseaudio \
		audio/rnnoise \
		devel/jansson \
		graphics/ffmpeg \
		lang/luajit \
		multimedia/libv4l \
		net/curl \
		security/polarssl \
		wayland/wayland \
		x11/qt5/qtsvg,-main

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic


CONFIGURE_ARGS =	-DCMAKE_VERBOSE_MAKEFILE=true \
			-DENABLE_PIPEWIRE=OFF \
			-DBUILD_BROWSER=OFF \
			-DBUILD_VST=OFF

NO_TEST=	Yes

#post-extract:
#	cp -R ${FILESDIR}/sndio ${WRKSRC}/plugins/
#	cp ${FILESDIR}/FindSndio.cmake ${WRKSRC}/cmake/Modules/

.include <bsd.port.mk>
