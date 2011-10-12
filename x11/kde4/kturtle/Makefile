# $OpenBSD$

COMMENT =	educational programming environment for KDE
DISTNAME =	kturtle-${MODKDE_VERSION}

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio knewstuff3

LIB_DEPENDS = 	x11/kde4/libs

RUN_DEPENDS =	x11/kde4/runtime

.include <bsd.port.mk>
