
V =		2.2.0
#PKGNAME =	orcaslicer-${V}

COMMENT =	cutting-edge 3D printing slicer software
GH_ACCOUNT =	SoftFever
GH_PROJECT =	OrcaSlicer
GH_TAGNAME =	v${V}

CATEGORIES =	cad

HOMEPAGE =	https://orcaslicer.net/

MAINTAINER =	Brandon Mercer <bmrcer@openbsd.org>

# AGPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE OSMesa SM TKBO TKBRep TKCAF
WANTLIB += TKCDF TKDE TKDESTEP TKG2d TKG3d TKGeomAlgo TKGeomBase
WANTLIB += TKHLR TKLCAF TKMath TKMesh TKPrim TKService TKShHealing
WANTLIB += TKTopAlgo TKV3d TKVCAF TKXCAF TKXSBase TKernel X11
WANTLIB += Xext atk-1.0 blosc c cairo cairo-gobject crypto curl
WANTLIB += dbus-1 execinfo expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glfw glib-2.0 gmodule-2.0 gmp gmpxx gobject-2.0
WANTLIB += gstbase-1.0 gstreamer-1.0 gtk-3 harfbuzz hidapi-libusb
WANTLIB += icui18n icuuc intl javascriptcoregtk-4.1 jpeg m nlopt
WANTLIB += opencv_calib3d opencv_core opencv_dnn opencv_features2d
WANTLIB += opencv_flann opencv_highgui opencv_imgcodecs opencv_imgproc
WANTLIB += opencv_ml opencv_objdetect opencv_photo opencv_stitching
WANTLIB += opencv_video opencv_videoio pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png soup-3.0 ssl tbb tbbmalloc tiff webkit2gtk-4.1
WANTLIB += wx_baseu-3.2 wx_baseu_net-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2 wx_gtk3u_media-3.2
WANTLIB += wx_gtk3u_webview-3.2 z

#FIX_CRLF_FILES =	src/slic3r/GUI/GLCanvas3D.cpp

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
#			x11/gnome

#			x11/tk

#MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# cereal/cgal/eigen3/nanosvg are header-only libraries
BUILD_DEPENDS =		devel/boost \
		devel/cereal \
		graphics/openvdb \
		graphics/openexr \
		math/eigen3 \
		www/webkitgtk4

LIB_DEPENDS =	\
		archivers/blosc \
 		cad/opencascade \
		comms/libhidapi \
		devel/gmp,-cxx \
		devel/mpfr \
		devel/tbb \
		graphics/glfw \
		graphics/opencv \
		math/nlopt \
		textproc/icu4c \
		x11/dbus \
		x11/wxWidgets \
		x11/wxWidgets,-media \
		x11/wxWidgets,-webview


#			-DSLIC3R_STATIC=1 \

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DCMAKE_MODULE_PATH=${PREFIX}/lib/cmake/OpenVDB \
			-DSLIC3R_FHS=1 \
			-DSLIC3R_GTK=3 \
			-DSLIC3R_PCH=OFF


DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	rm ${WRKDIST}/cmake/modules/FindEigen3.cmake

.include <bsd.port.mk>
