# $OpenBSD$

COMMENT =		KDE terminal emulator
DISTNAME =		konsole-${VERSION}

BUILD_DEPENDS +=	x11/kde4/automoc
LIB_DEPENDS +=		x11/kde4/libs
RUN_DEPENDS +=		devel/desktop-file-utils

WANTLIB += c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += nepomuk nepomukutils soprano
WANTLIB += kdecore kdeui kio knotifyconfig kparts kpty

.include <bsd.port.mk>
