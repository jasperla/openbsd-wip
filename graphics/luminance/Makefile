# $OpenBSD$
COMMENT =		application that aims to provide a workflow for HDR imaging

DISTNAME =		luminance-hdr-2.3.0

CATEGORIES =		graphics

HOMEPAGE =		http://qtpfsgui.sourceforge.net/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qtpfsgui/}
EXTRACT_SUFX = 		.tar.bz2

WANTLIB += Half Iex IlmImf QtGui QtSql QtWebKit QtXml c exiv2
WANTLIB += fftw3f fftw3f_threads gsl gslcblas jpeg lcms2 m png
WANTLIB += pthread raw_r stdc++ tiff

MODULES =		devel/cmake x11/qt4
LIB_DEPENDS =		devel/gsl \
			graphics/libraw \
			graphics/openexr \
			graphics/exiv2 \
			graphics/tiff \
			math/fftw3,float
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/qt4

CONFIGURE_ARGS += 	-DCMAKE_BUILD_TYPE=Release \
			-DCMAKE_EXE_LINKER_FLAGS=-pthread \
			-DLIBPNG_INCLUDE_DIR=${LOCALBASE}/include/libpng

NO_REGRESS =		Yes

pre-extract:
	mkdir ${WRKDIST}

.include <bsd.port.mk>
