# $OpenBSD: Makefile,v 1.9 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, toys
DISTNAME =	kdetoys-${VERSION}

USE_GROFF =	Yes

WANTLIB += c m pthread stdc++
WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtSvg
WANTLIB += kdecore>=8 kdeui knotifyconfig kscreensaver

# last one should be:
#WANTLIB += kparts kscreensaver>=8

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/workspace

RUN_DEPENDS +=	devel/desktop-file-utils

# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
