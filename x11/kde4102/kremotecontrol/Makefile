# $OpenBSD$

COMMENT =	KDE frontend for remote controls
DISTNAME =	kremotecontrol-${MODKDE4_VERSION}

SHARED_LIBS =	libkremotecontrol	0.0 # 1.0

WANTLIB =  c m pthread stdc++
WANTLIB += X11 Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/plasma

BUILD_DEPENDS =	x11/kde4/workspace>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	x11/kde4/workspace>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
