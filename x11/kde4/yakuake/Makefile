# $OpenBSD$

COMMENT =	K Desktop Environment, quake-style terminal emulator
VERSION =	2.9.8
DISTNAME =	yakuake-${VERSION}
REVISION =	1

MASTER_SITES =	${MASTER_SITE_KDE:=stable/yakuake/${VERSION}/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio kparts nepomuk nepomukutils soprano

RUN_DEPENDS =	x11/kde4/konsole

.include <bsd.port.mk>
