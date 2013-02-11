# $OpenBSD$

COMMENT =	K Desktop Environment, mouse clicker for accessibility users
DISTNAME =	kmousetool-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ICE SM X11 Xext Xtst kdeui

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
