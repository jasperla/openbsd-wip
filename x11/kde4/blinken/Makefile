# $OpenBSD$

COMMENT =	K Desktop Environment, game Simon Says
DISTNAME =	blinken-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio phonon 

RUN_DEPENDS =	x11/gtk+2,-guic

.include <bsd.port.mk>
