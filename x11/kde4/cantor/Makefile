# $OpenBSD$

BROKEN =	crashes and other bugs here and there
COMMENT =	K Desktop Environment, mathematical applications
DISTNAME =	cantor-${MODKDE_VERSION}


SHARED_LIBS =  cantorlibs                0.0 # 0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += analitza analitzagui kdeui kio knewstuff3 kparts kpty ktexteditor nepomuk
WANTLIB += nepomukutils soprano spectre
WANTLIB += cln glib-2.0 lib/R/lib/R lib/R/lib/Rblas lib/R/lib/Rlapack gfortran qalculate xml2

MODULES =	devel/gettext

LIB_DEPENDS = 	databases/soprano \
		lang/gfortran,-lib \
		math/R>=2.8.1p8 \
		math/qalculate/libqalculate \
		print/libspectre \
		x11/kde4/analitza

.include <bsd.port.mk>
