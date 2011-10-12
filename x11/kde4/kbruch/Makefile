# $OpenBSD$

COMMENT =		small program to practice calculating for KDE
DISTNAME =		kbruch-${MODKDE_VERSION}

LIB_DEPENDS += 	x11/kde4/libs 

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += QtDBus QtGui QtSvg c kdecore kdeui m pthread stdc++

.include <bsd.port.mk>
