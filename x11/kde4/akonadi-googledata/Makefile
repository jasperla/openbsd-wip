# $OpenBSD$

COMMENT =	K Desktop Environment, Google contacts/calendar <-> Akonadi 
DISTNAME =	akonadi-googledata-1.2.0
EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =	http://libgcal.googlecode.com/files/

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += akonadi-kde kabc kcal kdeui kio kresources
WANTLIB += gcal

MODKDE4_USE =	libs pim

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS = 	devel/libgcal

.include <bsd.port.mk>
