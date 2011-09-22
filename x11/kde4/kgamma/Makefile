# $OpenBSD$

COMMENT =	screen gamma management for KDE
DISTNAME =	kgamma-${VERSION}

LIB_DEPENDS += 	x11/kde4/libs

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m stdc++
WANTLIB += ICE SM X11 Xext Xxf86vm
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += kdecore kdeui

.include <bsd.port.mk>
