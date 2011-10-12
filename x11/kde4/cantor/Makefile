# $OpenBSD$

COMMENT =		K Desktop Environment, mathematical applications
DISTNAME =		cantor-${MODKDE_VERSION}

SHARED_LIBS +=  cantorlibs                0.0 # 0.0

LIB_DEPENDS += 	x11/kde4/libs \
		databases/soprano \
		print/libspectre \
		math/R

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml QtXmlPatterns c
WANTLIB += kdecore kdeui kio knewstuff3 kparts kpty ktexteditor
WANTLIB += m nepomuk nepomukutils pthread stdc++ soprano spectre
		
.include <bsd.port.mk>
