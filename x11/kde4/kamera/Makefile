# $OpenBSD$

COMMENT =	digital camera support for KDE
DISTNAME =	kamera-${MODKDE_VERSION}

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio
WANTLIB += gphoto2_port gphoto2

LIB_DEPENDS = 	graphics/libgphoto2

.include <bsd.port.mk>
