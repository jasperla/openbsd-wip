# $OpenBSD$

COMMENT =	simple video player for KDE
DISTNAME =	dragon-${MODKDE_VERSION}

CATEGORIES =	multimedia

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio kparts nepomuk nepomukutils phonon plasma solid
WANTLIB += soprano

LIB_DEPENDS =	multimedia/phonon

.include <bsd.port.mk>
