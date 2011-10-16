# $OpenBSD$

COMMENT =	screen ruler for KDE
DISTNAME =	kruler-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += kdecore kdeui

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS = 	x11/kde4/libs

.include <bsd.port.mk>
