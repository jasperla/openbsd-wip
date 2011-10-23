# $OpenBSD: Makefile,v 1.3 2011/07/16 22:43:57 espie Exp $

ONLY_FOR_ARCH=		${GCC4_ARCHS}

SHARED_ONLY=		Yes

COMMENT-main=		library of programming functions for real time cv
COMMENT-docs=		documentation for OpenCV

V=			2.3.1a
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
SHARED_LIBS +=		opencv_video			1.0

HOMEPAGE=		http://opencv.willowgarage.com/

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opencvlibrary/}
EXTRACT_SUFX=		.tar.bz2
EXTRACT_ONLY=
WRKDIST=		${WRKDIR}/${DISTNAME:C/[a-z]*$//}

WANTLIB += GL Half Iex IlmImf Imath X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm atk-1.0 avcodec avformat avutil bz2 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsm gstapp-0.10
WANTLIB += gstbase-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 jasper jpeg m mp3lame ogg orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += schroedinger-1.0 speex stdc++ swscale theoradec theoraenc
WANTLIB += tiff vorbis vorbisenc vpx x264 xcb xcb-render xcb-shm
WANTLIB += xml2 z ${MODPY_WANTLIB}

MODULES=		devel/cmake \
			devel/gettext

MULTI_PACKAGES= 	-main -docs

FLAVORS=		python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
CONFIGURE_ARGS+=	-DBUILD_NEW_PYTHON_SUPPORT:Bool=On \
			-DINSTALL_PYTHON_EXAMPLES:Bool=On

MODULES=		devel/python
RUN_DEPENDS-main=	math/py-numpy
WANTLIB +=		${MODPY_WANTLIB}
.else
CONFIGURE_ARGS+=	-DBUILD_NEW_PYTHON_SUPPORT:Bool=Off \
			-DINSTALL_PYTHON_EXAMPLES:Bool=Off
.endif

CONFIGURE_STYLE=	cmake
LIB_DEPENDS-main=	multimedia/gstreamer-0.10/plugins-base \
			x11/gtk+2 \
			graphics/ilmbase \
			graphics/openexr \
			graphics/png \
			graphics/ffmpeg

WANTLIB-docs=		# empty
LIB_DEPENDS-docs=	# empty
RUN_DEPENDS-docs=	# empty
PKG_ARCH-docs=		*

USE_LIBTOOL=		Yes
SEPARATE_BUILD=		flavored

VMEM_WARNING=		Yes

BUILD_DEPENDS=		devel/doxygen

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.:
CONFIGURE_ARGS+=	-DBUILD_EXAMPLES:Bool=On \
			-DINSTALL_C_EXAMPLES:Bool=On \
			-DWITH_GTK:Bool=On \
			-DWITH_V4L:Bool=Off \
			-DWITH_GSTREAMER:Bool=On \
			-DWITH_PNG:Bool=On \
			-DWITH_1394:Bool=Off \
			-DWITH_FFMPEG:Bool=On

post-extract:
	cd ${WRKDIR} && pax -rj -s '/\/\.//g' <${DISTDIR}/${DISTFILES}

post-configure:
	find ${WRKSRC} -type f -iname "*.make" -exec \
		perl -pi -e 's/(CXX_DEFINES =).*/$1/' {} \;

.include <bsd.port.mk>
