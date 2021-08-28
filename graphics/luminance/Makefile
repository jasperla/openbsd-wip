# $OpenBSD$
COMMENT =		application that aims to provide a workflow for HDR imaging

DISTNAME =		luminance-hdr-2.6.1.1

CATEGORIES =		graphics

HOMEPAGE =		http://qtpfsgui.sourceforge.net/

MAINTAINER =		Kirill Bychkov <kirby@openbsd,org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qtpfsgui/}
EXTRACT_SUFX = 		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX} Half-2_5 Iex-2_5 IlmImf-2_5 IlmThread-2_5
WANTLIB += Imath-2_5 Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml boost_atomic-mt
WANTLIB += boost_chrono-mt boost_date_time-mt boost_program_options-mt
WANTLIB += boost_system-mt boost_thread-mt c cfitsio exiv2 fftw3f
WANTLIB += fftw3f_threads gsl gslcblas jpeg lcms2 m png raw_r tiff z

MODULES =		devel/cmake x11/qt5
LIB_DEPENDS =		devel/gsl \
			graphics/libraw \
			graphics/openexr \
			graphics/exiv2 \
			graphics/tiff \
			math/cfitsio \
			math/fftw3,float \
			math/eigen3 \
			x11/qt5/qtwebkit
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS = 	-DEIGEN3_INCLUDE_DIR=${LOCALBASE}/include/eigen3 \
			-Wno-dev

pre-configure:
# Allow builds from release distfile to display correct git hash in "About"
# dialog window.
	@perl -pi -e \
		's,@GIT_SHA1@,17472000c439bc5724771acfb7080145794a7fed,' \
			${WRKSRC}/src/Common/GitSHA1.cpp.in
# Point to the right location of GPL license text.
	${SUBST_CMD} ${WRKSRC}/src/Common/archs.h.in
	@perl -pi -e \
		's,share/doc/luminance-hdr,share/luminance-hdr,' \
			${WRKSRC}/src/UI/UMessageBox.cpp
	@perl -pi -e 's,-lrt,,g' ${WRKSRC}/test/CMakeLists.txt

.include <bsd.port.mk>
