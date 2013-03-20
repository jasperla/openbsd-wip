# $OpenBSD$

COMMENT =	printing management for KDE
DISTNAME =	print-manager-${MODKDE4_VERSION}

SHARED_LIBS =	kcupslib		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio plasma
WANTLIB += cups

LIB_DEPENDS =	print/cups,-libs

.include <bsd.port.mk>
