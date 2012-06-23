# $OpenBSD: Makefile,v 1.12 2012/05/03 06:35:31 ajacoutot Exp $

ONLY_FOR_ARCHS=		${GCC4_ARCHS}

SHARED_ONLY=		Yes

COMMENT-main=		library of programming functions for real time cv
COMMENT-docs=		documentation for OpenCV

V=			2.4.1
REVISION=		2
DISTNAME=		OpenCV-$V
PKGNAME-main=		opencv-$V
PKGNAME-docs=		opencv-docs-$V
CATEGORIES=		graphics devel

SHARED_LIBS +=		opencv_calib3d			1.0
SHARED_LIBS +=		opencv_contrib			1.0
SHARED_LIBS +=		opencv_core			1.0
SHARED_LIBS +=		opencv_features2d		1.0
SHARED_LIBS +=		opencv_flann			1.0
SHARED_LIBS +=		opencv_gpu			1.0
SHARED_LIBS +=		opencv_highgui			1.0
SHARED_LIBS +=		opencv_imgproc			1.0
SHARED_LIBS +=		opencv_legacy			1.0
SHARED_LIBS +=		opencv_ml			1.0
SHARED_LIBS +=		opencv_objdetect		1.0
SHARED_LIBS +=		opencv_ts			0.0
SHARED_LIBS +=		opencv_video			1.0
SHARED_LIBS +=		opencv_nonfree			0.0
SHARED_LIBS +=		opencv_photo			0.0
SHARED_LIBS +=		opencv_stitching		0.0
SHARED_LIBS +=		opencv_videostab		0.0

HOMEPAGE=		http://code.opencv.org

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.sizeofvoid.org/pub/OpenBSD/distfiles/
EXTRACT_SUFX=		.tar.bz2

WANTLIB-main += GL Half Iex IlmImf IlmThread Imath X11 Xcomposite Xcursor
WANTLIB-main += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB-main += avcodec avformat avutil bz2 c cairo expat fontconfig
WANTLIB-main += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gmodule-2.0 gobject-2.0 gsm gstapp-0.10 gstbase-0.10
WANTLIB-main += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB-main += jasper jpeg m mp3lame ogg orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pixman-1 png pthread pthread-stubs schroedinger-1.0
WANTLIB-main += speex stdc++ swscale theoradec theoraenc tiff vorbis
WANTLIB-main += vorbisenc vpx x264 xcb xcb-render xcb-shm xml2 xvidcore z
WANTLIB-main += ${MODGETTEXT_WANTLIB} ${MODPY_WANTLIB}

MODULES=		devel/cmake \
			devel/gettext \
			lang/python

MULTI_PACKAGES=		-main -docs

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	cmake
LIB_DEPENDS-main=	multimedia/gstreamer-0.10/plugins-base \
			x11/gtk+2 \
			graphics/ffmpeg \
			graphics/ilmbase \
			graphics/jpeg \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			${MODPY_LIB_DEPENDS}

RUN_DEPENDS-main=	math/py-numpy

WANTLIB-docs=		# empty
LIB_DEPENDS-docs=	# empty
RUN_DEPENDS-docs=	# empty
PKG_ARCH-docs=		*

VMEM_WARNING=		Yes

BUILD_DEPENDS=		devel/doxygen

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS+=	-DBUILD_EXAMPLES:Bool=On \
			-DINSTALL_C_EXAMPLES:Bool=On \
			-DINSTALL_PYTHON_EXAMPLES:Bool=On \
			-DWITH_GTK:Bool=On \
			-DWITH_V4L:Bool=Off \
			-DWITH_GSTREAMER:Bool=On \
			-DWITH_JPEG:Bool=On \
			-DWITH_PNG:Bool=On \
			-DWITH_TIFF:Bool=On \
			-DWITH_1394:Bool=Off \
			-DWITH_FFMPEG:Bool=On

post-configure:
	@find ${WRKSRC} -type f -iname "*.make" -exec \
		perl -pi -e 's/(CXX_DEFINES =).*/$1/' {} \;

post-install:
	@cd ${PREFIX} && mv share/OpenCV/* share/opencv

.include <bsd.port.mk>
