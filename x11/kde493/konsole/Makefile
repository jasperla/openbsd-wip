# $OpenBSD$

COMMENT =	K Desktop Environment, terminal emulator
DISTNAME =	konsole-${MODKDE_VERSION}

SHARED_LIBS =	kdeinit4_konsole	0.0
SHARED_LIBS +=	konsoleprivate		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += nepomuk nepomukutils soprano
WANTLIB += kdeui kio knotifyconfig konq kparts kpty

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/kde4/baseapps

REGRESS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
