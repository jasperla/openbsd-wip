# $OpenBSD$

COMMENT =	K Desktop Environment, letter order game
DISTNAME =	kanagram-${MODKDE_VERSION}

SHARED_LIBS =	kanagramengine		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui knewstuff3 phonon_s keduvocdocument

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	x11/kde4/libkdeedu>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
