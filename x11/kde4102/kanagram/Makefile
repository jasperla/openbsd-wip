# $OpenBSD$

COMMENT =	letter order game for KDE
DISTNAME =	kanagram-${MODKDE4_VERSION}

SHARED_LIBS =	kanagramengine		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knewstuff3 ${KDE4LIB}/keduvocdocument

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	x11/kde4/libkdeedu>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
