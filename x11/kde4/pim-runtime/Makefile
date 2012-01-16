# $OpenBSD: Makefile,v 1.12 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, PIM runtime support
DISTNAME =	kdepim-runtime-${MODKDE_VERSION}

SHARED_LIBS =	akonadi-filestore	0.0 # 4.7
SHARED_LIBS +=	akonadi-xml		0.0 # 4.7
SHARED_LIBS +=	kdepim-copy		0.0 # 4.7
SHARED_LIBS +=	kmindexreader		0.0 # 4.7
SHARED_LIBS +=	maildir			0.0 # 4.7

WANTLIB =  c m pthread stdc++ xml2
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns akonadi-calendar
WANTLIB += akonadi-contact akonadi-kabc akonadi-kcal akonadi-kde
WANTLIB += akonadi-kmime akonadi-notes akonadiprotocolinternals kabc
WANTLIB += kalarmcal kcal kcalcore kcalutils kcmutils kdeui
WANTLIB += kidletime kimap kio
WANTLIB += kmbox kmime knewstuff3 knotifyconfig kpimidentities
WANTLIB += kpimtextedit kpimutils kresources krosscore mailtransport
WANTLIB += microblog nepomuk phonon solid soprano
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs pim

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	databases/soprano \
		databases/strigi \
		multimedia/phonon \
		x11/kde48/akonadi

RUN_DEPENDS +=	x11/gtk+2,-guic

.include <bsd.port.mk>
