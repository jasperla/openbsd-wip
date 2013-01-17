# $OpenBSD$

COMMENT =	KDE Activity rooms management
DISTNAME =	kactivities-${MODKDE_VERSION}

SHARED_LIBS =	kactivities	0.0 # 6.0

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeclarative kdeui kio nepomuk nepomukquery plasma soprano

MODKDE4_USE =		libs

BUILD_DEPENDS =		misc/shared-desktop-ontologies

.include <bsd.port.mk>
