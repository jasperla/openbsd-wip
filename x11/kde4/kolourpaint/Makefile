# $OpenBSD$

COMMENT =	K Desktop Environment, image editor
DISTNAME =	kolourpaint-${VERSION}

SHARED_LIBS +=	kolourpaint_lgpl	0.0	# 4.7

LIB_DEPENDS += 	x11/kde4/baseapps  \
		x11/kde4/libs \
		x11/kde4/qimageblitz \
		x11/kde4/runtime

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdecore kdeui kemoticons kidletime kio
WANTLIB += kprintutils kutils qimageblitz

.include <bsd.port.mk>
