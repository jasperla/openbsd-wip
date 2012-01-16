# $OpenBSD$

COMMENT =	K Desktop Environment, image editor
DISTNAME =	kolourpaint-${MODKDE_VERSION}

SHARED_LIBS =	kolourpaint_lgpl	0.0	# 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdeui kemoticons kidletime kio
WANTLIB += kprintutils kutils qimageblitz

LIB_DEPENDS = 	x11/kde4/baseapps  \
		x11/kde4/qimageblitz

.include <bsd.port.mk>
