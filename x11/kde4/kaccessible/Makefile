# $OpenBSD$

COMMENT =	K Desktop Environment, screenreader and focus tracking
DISTNAME =	kaccessible-${MODKDE_VERSION}
REVISION =	0

WANTLIB =  c kdeui m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += speechd

LIB_DEPENDS =	audio/speech-dispatcher

.include <bsd.port.mk>
