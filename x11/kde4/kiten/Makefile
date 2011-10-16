# $OpenBSD$

COMMENT =	Japanese reference tool for KDE
DISTNAME =	kiten-${MODKDE_VERSION}

SHARED_LIBS =	kiten			0.0 # 4.7

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/kde4/runtime

LIB_DEPENDS = 	x11/kde4/libs

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdecore kdeui khtml kio kjs kparts nepomuk nepomukutils
WANTLIB += phonon soprano

.include <bsd.port.mk>
