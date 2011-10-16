# $OpenBSD$

COMMENT =	geography learning tool for KDE
DISTNAME =	kgeography-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/kde4/runtime

LIB_DEPENDS = 	x11/kde4/libs

.include <bsd.port.mk>
