# $OpenBSD: Makefile,v 1.9 2010/11/22 08:37:02 espie Exp $

COMMENT =	small and funny applications for KDE4
DISTNAME =	kdetoys-${MODKDE_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtSvg
WANTLIB += kdeui knotifyconfig kscreensaver ${MODPY_WANTLIB}

MODKDE4_USE =	workspace

# last one should be:
#WANTLIB += kparts kscreensaver>=8

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
