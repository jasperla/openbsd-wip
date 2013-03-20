# $OpenBSD$

COMMENT =	Nepomuk-based KDE Plasma widgets
DISTNAME =	nepomuk-widgets-${MODKDE4_VERSION}

SHARED_LIBS =	nepomukwidgets		0.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/nepomukcore soprano

MODKDE4_USE =	libs

LIB_DEPENDS =	x11/kde4/nepomuk-core>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
