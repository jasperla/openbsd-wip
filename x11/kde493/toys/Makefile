# $OpenBSD: Makefile,v 1.9 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, toys
DISTNAME =	kdetoys-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtSvg
WANTLIB += kdeui knotifyconfig kscreensaver ${MODPY_WANTLIB}

MODKDE4_USE =	workspace

# last one should be:
#WANTLIB += kparts kscreensaver>=8

.include <bsd.port.mk>
