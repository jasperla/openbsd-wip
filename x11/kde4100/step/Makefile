# $OpenBSD$

COMMENT =	K Desktop Environment, interactive physics simulator
DISTNAME =	step-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui khtml kio kjs knewstuff3 kparts nepomuk
WANTLIB += nepomukutils phonon_s soprano
WANTLIB += cln glib-2.0 gsl gslcblas iconv intl qalculate xml2

MODULES =	devel/gettext

BUILD_DEPENDS =	math/eigen2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	devel/gsl \
		math/qalculate/libqalculate

CONFIGURE_ARGS =	-DSTEPCORE_TESTS:Bool=True

.include <bsd.port.mk>
