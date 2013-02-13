# $OpenBSD$

COMMENT =	K Desktop Environment, terminal emulator
DISTNAME =	konsole-${MODKDE_VERSION}

SHARED_LIBS =	kdeinit4_konsole	0.0
SHARED_LIBS +=	konsoleprivate		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio knotifyconfig konq kparts kpty
WANTLIB += nepomuk nepomukutils soprano

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/kde4/baseapps>=${MODKDE4_DEP_VERSION}

REGRESS_IS_INTERACTIVE =	X11
REGRESS_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
