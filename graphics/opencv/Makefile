# $OpenBSD: Makefile,v 1.45 2018/10/24 14:28:06 sthen Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}

CATEGORIES =		graphics devel
COMMENT-docs =		OpenCV documentation and examples
COMMENT-main =		library of programming functions for real time cv
COMMENT-java =		Java bindings for OpenCV

V =			3.4.5
DISTNAME =		opencv-${V}

PKGNAME-main =		${PKGNAME}
PKGNAME-docs =		opencv-docs-$V
PKGNAME-java =		opencv-java-$V

.for i in opencv_calib3d opencv_core opencv_dnn opencv_features2d \
  opencv_flann opencv_highgui opencv_imgcodecs opencv_imgproc \
  opencv_ml opencv_objdetect opencv_photo opencv_shape opencv_stitching \
  opencv_superres opencv_video opencv_videoio opencv_videostab
SHARED_LIBS += $i 4.0
.endfor

HOMEPAGE =		https://www.opencv.org/
MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# "patents" means containing some patented algorithms, see
# https://docs.opencv.org/3.4.5/dc/dcb/nonfree_8hpp.html
# As some source modules include this functionality, we couldn't
# just subpackage "nonfree". Excluding this, here we have a usual
# BSD license.
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		patents
PERMIT_PACKAGE_CDROM-docs =	Yes


MASTER_SITES=	https://sizeofvoid.org/pub/OpenBSD/distfiles/

DISTFILES += 	${DISTNAME}.tar.gz \
		opencv_contrib-${V}.tar.gz

WANTLIB-main += ${MODPY_WANTLIB}
WANTLIB-main += ${COMPILER_LIBCXX}
WANTLIB-main += Half Iex IlmImf IlmThread Imath atk-1.0 avcodec avformat
WANTLIB-main += avresample avutil c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0 gstbase-1.0
WANTLIB-main += gstpbutils-1.0 gstreamer-1.0 gstriff-1.0 gstvideo-1.0
WANTLIB-main += gthread-2.0 gtk-3 intl jasper jpeg m pango-1.0 pangocairo-1.0
WANTLIB-main += png16 swscale tiff z
WANTLIB-main += webp gphoto2 gphoto2_port

WANTLIB-docs =

WANTLIB-java += ${COMPILER_LIBCXX} m opencv_calib3d opencv_core opencv_dnn
WANTLIB-java += opencv_features2d opencv_flann opencv_highgui opencv_imgcodecs
WANTLIB-java += opencv_imgproc opencv_ml opencv_objdetect opencv_photo
WANTLIB-java += opencv_shape opencv_stitching opencv_superres
WANTLIB-java += opencv_video opencv_videoio opencv_videostab

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES =	-main -docs -java
PSEUDO_FLAVORS =	no_docs no_java
FLAVOR ?=

.include <bsd.port.arch.mk>

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
			math/eigen3 \
			math/py-numpy \
			www/py-beautifulsoup4

RUN_DEPENDS-main =	math/py-numpy
RUN_DEPENDS-docs =	${BUILD_PKGPATH},-main
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3 \
			math/hdf5 \
			graphics/ffmpeg \
			graphics/ilmbase \
			graphics/jpeg \
			graphics/libgphoto2 \
			graphics/libwebp \
			graphics/openexr \
			graphics/png \
			graphics/tiff

LIB_DEPENDS-java =	${BUILD_PKGPATH},-main=${V}

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS +=	-DBUILD_TESTS=On \
			-DBUILD_opencv_python2=On \
			-DOPENCV_ENABLE_NONFREE=On \
			-DWITH_GPHOTO2=On \
			-DBUILD_IPP_IW=Off \
			-DBUILD_ITT=Off \
			-DBUILD_PERF_TESTS=Off \
			-DWITH_1394=Off \
			-DWITH_IPP=Off \
			-DWITH_ITT=Off \
			-DWITH_OPENCL=Off \
			-DWITH_V4L=Off

# opencv_contrib (enable face)
CONFIGURE_ARGS +=	-DOPENCV_EXTRA_MODULES_PATH="${WRKDIR}/opencv_contrib-${V}/modules" \
			-DBUILD_opencv_legacy=OFF

.if ${ARCH:Mi386}
# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a library, switch to PIC.
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"
# XXX Disable optimizations
CONFIGURE_ARGS+=	-DCPU_DISPATCH=
.endif

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.8+
BUILD_DEPENDS +=	devel/apache-ant
.else
# Safe: Java will be detected, if present, but won't be used
CONFIGURE_ARGS +=	-DBUILD_opencv_java=Off
.endif

.if ${BUILD_PACKAGES:M-docs}
ALL_TARGET = 		all doxygen
CONFIGURE_ARGS +=	-DBUILD_DOCS=On \
			-DBUILD_EXAMPLES=On \
			-DINSTALL_C_EXAMPLES=On \
			-DINSTALL_PYTHON_EXAMPLES=On
.else
CONFIGURE_ARGS +=	-DBUILD_DOCS=Off \
			-DBUILD_EXAMPLES=Off \
			-DINSTALL_C_EXAMPLES=Off \
			-DINSTALL_PYTHON_EXAMPLES=Off
.endif

DOCDIR =		${PREFIX}/share/doc/OpenCV

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.if ${BUILD_PACKAGES:M-docs}
	rm -Rf ${DOCDIR}
	mv ${PREFIX}/share/OpenCV/doc ${DOCDIR}
.endif

do-test:
	#download testdata
	cd ${WRKBUILD}; \
	[ -f opencv_extra.tar.gz ] || ftp -o opencv_extra.tar.gz https://github.com/opencv/opencv_extra/archive/${V}.tar.gz; \
	[ -d opencv_extra-${V} ] || tar xzf opencv_extra.tar.gz
	#accuracy tests
	cd ${WRKBUILD}; \
	env OPENCV_TEST_DATA_PATH=opencv_extra-${V}/testdata ${MODPY_BIN} ${WRKSRC}/modules/ts/misc/run.py -a
#	#performance tests (needs -DBUILD_PERF_TESTS=On)
#	cd ${WRKBUILD}; \
#	env OPENCV_TEST_DATA_PATH=opencv_extra-${V}/testdata ${MODPY_BIN} ${WRKSRC}/modules/ts/misc/run.py

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} != "base-clang"
# XXX Disable optimizations
CONFIGURE_ARGS+=	-DCPU_DISPATCH=
.endif

