# $OpenBSD$

COMMENT =		letter order game for KDE
DISTNAME =		kanagram-${VERSION}

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/libkdeedu

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += QtDBus QtGui QtSvg QtXml c kdecore kdeui knewstuff3
WANTLIB += m phonon pthread stdc++ keduvocdocument

.include <bsd.port.mk>
