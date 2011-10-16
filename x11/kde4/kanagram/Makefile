# $OpenBSD$

COMMENT =	letter order game for KDE
DISTNAME =	kanagram-${MODKDE_VERSION}

WANTLIB =  QtDBus QtGui QtSvg QtXml c kdecore kdeui knewstuff3
WANTLIB += m phonon pthread stdc++ keduvocdocument

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS = 	x11/kde4/libs \
		x11/kde4/libkdeedu

.include <bsd.port.mk>
