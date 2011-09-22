# $OpenBSD$

COMMENT =	screen ruler for KDE
DISTNAME =	kruler-${VERSION}

#SHARED_LIBS +=	kolourpaint_lgpl	0.0	# 4.7

LIB_DEPENDS += 	x11/kde4/libs

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += kdecore kdeui

.include <bsd.port.mk>
