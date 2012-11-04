# $OpenBSD$

COMMENT =	KDE Nepomuk core libraries
DISTNAME =	nepomuk-core-${MODKDE_VERSION}

SHARED_LIBS =   nepomukcore               0.0 # 4.9
SHARED_LIBS +=  nepomuksync               4.9 # 4.9

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kidletime kio solid soprano sopranoclient sopranoserver
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

BUILD_DEPENDS =	misc/shared-desktop-ontologies
LIB_DEPENDS =	databases/soprano \
		databases/strigi

RUN_DEPENDS =	databases/virtuoso

.include <bsd.port.mk>
