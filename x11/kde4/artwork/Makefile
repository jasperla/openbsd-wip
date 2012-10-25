# $OpenBSD$

COMMENT =	KDE graphics, styles and icon themes
DISTNAME =	kdeartwork-${MODKDE_VERSION}
REVISION =	0

MODKDE4_USE =	workspace

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecorations kdeui kexiv2 kio kparts kscreensaver
WANTLIB += nepomuk nepomukutils soprano

LIB_DEPENDS =	x11/kde4/libkexiv2

.include <bsd.port.mk>
