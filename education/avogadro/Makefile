# $OpenBSD$

COMMENT =		molecule editor and visualizer
V =			1.0.3
DISTNAME =		avogadro-${V}
CATEGORIES =		education biology
REVISION =		5
HOMEPAGE =		http://avogadro.openmolecules.net/

SHARED_LIBS +=		avogadro	0.0	# 1.0

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += boost_python-mt openbabel ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=avogadro/${V}/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4
MODKDE4_USE =

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
			misc/openbabel

SEPARATE_BUILD =	simple
USE_GROFF =		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
