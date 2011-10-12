# $OpenBSD$

COMMENT =		simple application to select the color for KDE
DISTNAME =		kcolorchooser-${MODKDE_VERSION}

LIB_DEPENDS += 	x11/kde4/libs 

RUN_DEPENDS =	devel/desktop-file-utils

WANTLIB += QtDBus QtGui QtSvg c kdecore kdeui m pthread stdc++

.include <bsd.port.mk>
