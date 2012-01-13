# $OpenBSD$

COMMENT =	KDE, file archiver 
DISTNAME =	ark-${MODKDE_VERSION}

SHARED_LIBS +=	kerfuffle	0.0 # 4.7

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml archive c kdeui kfile khtml kio kjs kparts
WANTLIB += kpty m nepomuk nepomukutils phonon pthread soprano stdc++

.include <bsd.port.mk>
