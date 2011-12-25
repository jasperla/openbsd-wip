# $OpenBSD$
COMMENT =		application that aims to provide a workflow for HDR imaging

DISTNAME =		luminance-hdr_2.0.0
PKGNAME = 		${DISTNAME:S/_/-/}

CATEGORIES =		graphics

HOMEPAGE =		http://qtpfsgui.sourceforge.net/

#MAINTAINER =		???

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		Half Iex IlmImf Imath QtDBus QtGui QtNetwork QtWebKit QtXml QtXmlPatterns \
			c  exiv2 fftw3f gsl gslcblas m phonon pthread sqlite3 stdc++ tiff

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qtpfsgui/}

MODULES =		x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/gsl \
			graphics/openexr \
			graphics/exiv2 \
			graphics/tiff \
			math/fftw3,float

FAKE_FLAGS = 		INSTALL_ROOT=${WRKINST}

USE_X11 =		Yes

NO_REGRESS =		Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4 PREFIX=${PREFIX}

.include <bsd.port.mk>
