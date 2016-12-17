# $OpenBSD$
COMMENT =		application that aims to provide a workflow for HDR imaging

DISTNAME =		luminance-hdr-2.3.1

CATEGORIES =		graphics

HOMEPAGE =		http://qtpfsgui.sourceforge.net/

MAINTAINER =		Kirill Bychkov <kirby@openbsd,org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qtpfsgui/}
EXTRACT_SUFX = 		.tar.bz2

WANTLIB += Half Iex IlmImf QtGui QtNetwork QtSql QtWebKit QtXml c
WANTLIB += exiv2 fftw3f fftw3f_threads gsl gslcblas jpeg lcms2 m
WANTLIB += png pthread raw_r stdc++ tiff z

MODULES =		devel/cmake x11/qt4
LIB_DEPENDS =		devel/gsl \
			graphics/libraw \
			graphics/openexr \
			graphics/exiv2 \
			graphics/tiff \
			math/fftw3,float
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

pre-configure:
# Allow builds from release distfile to display correct git hash in "About"
# dialog window.
	@perl -pi -e \
		's,@GIT_SHA1@,17472000c439bc5724771acfb7080145794a7fed,' \
			${WRKSRC}/src/Common/GitSHA1.cpp.in
# Point to the right location of GPL license text.
	${SUBST_CMD} ${WRKSRC}/src/Common/archs.h
	@perl -pi -e \
		's,share/doc/luminance-hdr,share/luminance-hdr,' \
			${WRKSRC}/src/UI/UMessageBox.cpp
	@perl -pi -e 's,-lrt,,g' ${WRKSRC}/test/CMakeLists.txt

.include <bsd.port.mk>
