# $OpenBSD$

COMMENT =	KDE Activity rooms management
DISTNAME =	kactivities-${MODKDE_VERSION}

SHARED_LIBS =	kactivities	0.0 # 6.0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kcmutils kdeclarative kdeui kio nepomukcore plasma soprano

MODULES =		gcc4
MODKDE4_USE =		libs
MODGCC4_ARCHS =		*
MODGCC4_VERSION =	4.6
MODGCC4_LANGS =		c c++

BUILD_DEPENDS =		misc/shared-desktop-ontologies

LIB_DEPENDS =		x11/kde4/nepomuk-core

.include <bsd.port.mk>
