# $OpenBSD$

COMMENT =	K Desktop Environment, text to speech application
DISTNAME =	jovie-${MODKDE_VERSION}

SHARED_LIBS =	kttsd	0.0 # 4.7

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml c kdeui kio m pthread stdc++
WANTLIB += lib/qt4/Qt3Support kcmutils kde3support kemoticons kidletime
WANTLIB += kparts kprintutils kutils nepomuk nepomukutils soprano
WANTLIB += speechd

LIB_DEPENDS =	audio/speech-dispatcher
RUN_DEPENDS =	x11/gtk+2,-guic

.include <bsd.port.mk>
