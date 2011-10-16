# $OpenBSD$

COMMENT =	K Desktop Environment, mathematical applications
DISTNAME =	cantor-${MODKDE_VERSION}

SHARED_LIBS =  cantorlibs                0.0 # 0.0

WANTLIB =  QtDBus QtGui QtNetwork QtSvg QtXml QtXmlPatterns c
WANTLIB += kdeui kio knewstuff3 kparts kpty ktexteditor
WANTLIB += m nepomuk nepomukutils pthread stdc++ soprano spectre

LIB_DEPENDS = 	databases/soprano \
		print/libspectre \
		math/R
		
.include <bsd.port.mk>
