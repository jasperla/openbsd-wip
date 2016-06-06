# $OpenBSD: Makefile,v 1.34 2015/01/30 21:38:37 zhuk Exp $

ONLY_FOR_ARCHS =	amd64 i386
ONLY_FOR_ARCHS-java =	${ONLY_FOR_ARCHS}

CATEGORIES =		graphics devel
COMMENT-docs =		OpenCV documentation and examples
COMMENT-main =		library of programming functions for real time cv
COMMENT-java =		Java bindings for OpenCV

V =			3.1.0
DISTNAME =		opencv-${V}
PKGNAME-main =		popencv3-${V}
PKGNAME-docs =		opencv3-docs-$V
PKGNAME-java =		opencv3-java-${V}

HOMEPAGE =		http://www.opencv.org/
MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

SHARED_LIBS =		opencv_calib3d			2.0 #1.1
SHARED_LIBS +=		opencv_core			2.0 #1.1
SHARED_LIBS +=		opencv_features2d		2.0 #1.1
SHARED_LIBS +=		opencv_flann			2.0 #1.1
SHARED_LIBS +=		opencv_highgui			2.0 #1.1
SHARED_LIBS +=		opencv_imgcodecs		0.0 #1.0
SHARED_LIBS +=		opencv_imgproc			2.0 #1.1
SHARED_LIBS +=		opencv_ml			2.0 #1.1
SHARED_LIBS +=		opencv_objdetect		2.0 #1.1
SHARED_LIBS +=		opencv_photo			1.0 #0.1
SHARED_LIBS +=		opencv_shape			0.0 #1.0
SHARED_LIBS +=		opencv_stitching		0.0 #1.0
SHARED_LIBS +=		opencv_superres			1.0 #0.1
SHARED_LIBS +=		opencv_video			2.0 #1.1
SHARED_LIBS +=		opencv_videoio			0.0 #1.0
SHARED_LIBS +=		opencv_videostab		1.0 #0.1

EXTRACT_SUFX =		.zip
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=opencvlibrary/}

WANTLIB-main = Half Iex IlmImf IlmThread Imath atk-1.0 avcodec avformat
WANTLIB-main += avresample avutil bz2 c cairo cairo-gobject estdc++ intl
WANTLIB-main += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB-main += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gstriff-1.0
WANTLIB-main += gstvideo-1.0 gthread-2.0 gtk-3 jasper jpeg m pango-1.0
WANTLIB-main += pangocairo-1.0 png pthread swscale tiff webp z
WANTLIB-main += gphoto2 gphoto2_port ${MODPY_WANTLIB}

WANTLIB-docs =

WANTLIB-java =  m pthread estdc++
WANTLIB-java += opencv_calib3d>=2.0 opencv_core>=2.0 opencv_features2d>=2.0 opencv_flann>=2.0
WANTLIB-java += opencv_highgui>=2.0 opencv_imgproc>=2.0 opencv_ml>=2.0 opencv_objdetect>=2.0
WANTLIB-java += opencv_photo>=1.0 opencv_video>=2.0 opencv_imgcodecs opencv_videoio

MULTI_PACKAGES =	-main -docs -java
PSEUDO_FLAVORS =	no_docs no_java
FLAVOR ?=

# BSDL
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.arch.mk>

MODULES =		lang/clang \
			devel/cmake \
			lang/python

MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

BUILD_DEPENDS =		devel/doxygen>=1.8.10 \
			math/py-numpy \
			math/eigen3

RUN_DEPENDS-main =	math/py-numpy
RUN_DEPENDS-docs =	${BUILD_PKGPATH},-main
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS} \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3 \
			graphics/ffmpeg \
			graphics/ilmbase \
			graphics/jpeg \
			graphics/libgphoto2 \
			graphics/libwebp \
			graphics/openexr \
			graphics/png \
			graphics/tiff

LIB_DEPENDS-java =	${BUILD_PKGPATH},-main=${V}

# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a LIBrary, switch to PIC.
.if ${ARCH:Mi386}
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"
.endif

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS =	-DWITH_1394:Bool=Off \
			-DWITH_VTK:Bool=Off \
			-DWITH_CUDA:Bool=Off \
			-DWITH_EIGEN:Bool=Off \
			-DWITH_V4L:Bool=Off \
			-DWITH_IPP:Bool=Off \
			-DWITH_OPENCL:Bool=Off \
			-DENABLE_SSE3:Bool=Off \
			-DBUILD_TESTS:Bool=On

.if ${BUILD_PACKAGES:M-docs}
BUILD_DEPENDS +=	textproc/py-sphinx
ALL_TARGET =		all doxygen
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=On \
			-DBUILD_EXAMPLES:Bool=On \
			-DINSTALL_C_EXAMPLES:Bool=On \
			-DINSTALL_PYTHON_EXAMPLES:Bool=On
.else
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=Off \
			-DBUILD_EXAMPLES:Bool=Off \
			-DINSTALL_PYTHON_EXAMPLES:Bool=Off
.endif

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.8+
BUILD_DEPENDS +=	devel/apache-ant
.else
# Safe: Java will be detected, if present, but won't be used
CONFIGURE_ARGS +=	-DBUILD_opencv_java:Bool=Off
.endif

CONFIG_ADJ_CMD =	perl -pi
.for _l _v in ${SHARED_LIBS}
CONFIG_ADJ_CMD +=	-e 's,lib${_l}.so([^.]),lib${_l}.so.${_v}$$1,g;'
.endfor

post-install:
	${CONFIG_ADJ_CMD} ${PREFIX}/share/OpenCV/OpenCVConfig.cmake
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

do-test:
	cd ${WRKBUILD}; \
	${MODPY_BIN} ${WRKSRC}/modules/ts/misc/run.py

.include <bsd.port.mk>
