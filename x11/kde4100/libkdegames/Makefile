# $OpenBSD$

COMMENT =	common library for KDE-based games
DISTNAME =	libkdegames-${MODKDE4_VERSION}

SHARED_LIBS =	kdegames		0.0
SHARED_LIBS +=	kdegamesprivate		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kdnssd kio knewstuff3
WANTLIB += openal sndfile

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/openal \
		audio/libsndfile

.include <bsd.port.mk>
