# $OpenBSD$

COMMENT =	vocabulary trainer for KDE
DISTNAME =	parley-${MODKDE_VERSION}

WANTLIB += c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdecore kdeui keduvocdocument khtml kio kjs
WANTLIB += knewstuff3 kparts krosscore krossui nepomuk nepomukutils
WANTLIB += phonon plasma soprano
WANTLIB += xml2 xslt

BUILD_DEPENDS =	

LIB_DEPENDS = 	textproc/libxml \
		textproc/libxslt \
		x11/kde4/attica \
		x11/kde4/libkdeedu \
		x11/kde4/libs

RUN_DEPENDS =	x11/kde4/runtime

.include <bsd.port.mk>
