# $OpenBSD$

COMMENT =		digital camera support for KDE
DISTNAME =		kamera-${MODKDE_VERSION}

LIB_DEPENDS += 	x11/kde4/libs \
		graphics/libgphoto2

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml c gphoto2
WANTLIB += gphoto2_port kdecore kdeui kio m stdc++

.include <bsd.port.mk>
