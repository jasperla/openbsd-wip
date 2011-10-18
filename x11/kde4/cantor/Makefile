# $OpenBSD$

COMMENT =	K Desktop Environment, mathematical applications
DISTNAME =	cantor-${MODKDE_VERSION}

SHARED_LIBS =  cantorlibs                0.0 # 0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += kdeui kio knewstuff3 kparts kpty ktexteditor nepomuk
WANTLIB += nepomukutils soprano spectre

LIB_DEPENDS = 	databases/soprano \
		print/libspectre \
		math/R
		
.include <bsd.port.mk>
