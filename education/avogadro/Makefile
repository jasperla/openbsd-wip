# $OpenBSD$

COMMENT =		molecule editor and visualizer
V =			1.1.0
DISTNAME =		avogadro-${V}
CATEGORIES =		education biology
HOMEPAGE =		http://avogadro.openmolecules.net/

SHARED_LIBS =		avogadro	0.0	# 1.1

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += boost_python-mt openbabel ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=avogadro/${V}/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake x11/qt4 lang/python

BUILD_DEPENDS =		devel/py-sip \
			graphics/glew \
			math/eigen2 \
			math/py-numpy \
			textproc/docbook \
			x11/py-qt4

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-sip \
			graphics/glew \
			math/py-numpy \
			x11/py-qt4

LIB_DEPENDS =		devel/boost \
			STEM->=2.3:misc/openbabel

CONFIGURE_ENV =		QTDIR=${MODQT_LIBDIR}
MAKE_ENV =		QTDIR=${MODQT_LIBDIR}

.include <bsd.port.mk>
