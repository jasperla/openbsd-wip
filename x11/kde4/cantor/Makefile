# $OpenBSD$

COMMENT =	K Desktop Environment, mathematical applications
DISTNAME =	cantor-${MODKDE_VERSION}
REVISION =	1

SHARED_LIBS =  cantorlibs                0.0 # 0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += kdeui kio knewstuff3 kparts kpty ktexteditor nepomuk
WANTLIB += nepomukutils soprano spectre
WANTLIB += lib/R/lib/R gfortran

LIB_DEPENDS = 	databases/soprano \
		lang/gfortran,-lib \
		math/R>=2.8.1p6 \
		print/libspectre \
		x11/kde4/analitza
		
.include <bsd.port.mk>
