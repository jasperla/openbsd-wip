# $OpenBSD$

COMMENT =	KDE terminal emulator
DISTNAME =	konsole-${MODKDE_VERSION}
REVISION =	2

SHARED_LIBS =	kdeinit4_konsole	0.0
SHARED_LIBS +=	konsoleprivate		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += nepomuk nepomukutils soprano
WANTLIB += kdecore kdeui kio knotifyconfig kparts kpty

# Do not depend on kde-runtime here, this app is considered as more
# "base" than ones in kde-baseapps. Now read the last sentece fast.
# Faster. Faster!
RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/kde4/libs

.include <bsd.port.mk>
