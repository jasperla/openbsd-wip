# $OpenBSD$

COMMENT =	K Desktop Environment, mathematical applications
DISTNAME =	cantor-${MODKDE_VERSION}

SHARED_LIBS =  cantorlibs                0.0 # 0.0
SHARED_LIBS += cantor_config             0.0 # 0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns analitza analitzagui
WANTLIB += cln gfortran glib-2.0 kdeui kio knewstuff3 kparts kpty ktexteditor
WANTLIB += lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack
WANTLIB += nepomuk nepomukutils qalculate soprano spectre xml2

MODULES =	devel/gettext

LIB_DEPENDS = 	databases/soprano \
		lang/gfortran,-lib \
		math/R>=2.15.1p4 \
		math/qalculate/libqalculate \
		print/libspectre \
		x11/kde4/analitza

.include <bsd.port.mk>
