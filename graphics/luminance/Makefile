# $OpenBSD$
COMMENT =		application that aims to provide a workflow for HDR imaging

DISTNAME =		luminance-hdr-2.2.0

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
EXTRACT_CASES += 	*.tar.bz2) \
			${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf - -C ${WRKDIST};;

WANTLIB += Half Iex IlmImf QtGui QtSql QtWebKit QtXml c exiv2
WANTLIB += fftw3f gsl gslcblas m pthread raw_r stdc++ tiff

MODULES =		devel/cmake x11/qt4
LIB_DEPENDS =		devel/gsl \
			graphics/libraw \
			graphics/openexr \
			graphics/exiv2 \
			graphics/tiff \
			math/fftw3,float
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/qt4,-sqlite

CONFIGURE_ARGS += 	-DCMAKE_BUILD_TYPE=Release

NO_REGRESS =		Yes

pre-extract:
	mkdir ${WRKDIST}

.include <bsd.port.mk>
