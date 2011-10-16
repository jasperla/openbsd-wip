# $OpenBSD$

COMMENT =	K Desktop Environment, game Simon Says
DISTNAME =	blinken-${MODKDE_VERSION}

WANTLIB =  QtDBus QtGui QtNetwork QtSvg QtXml c kdecore kdeui
WANTLIB += kio m phonon pthread stdc++

LIB_DEPENDS = 	x11/kde4/libs 

RUN_DEPENDS =	devel/desktop-file-utils
		
.include <bsd.port.mk>
