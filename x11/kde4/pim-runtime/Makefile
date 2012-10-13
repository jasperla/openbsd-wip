# $OpenBSD: Makefile,v 1.12 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, PIM runtime support
DISTNAME =	kdepim-runtime-${MODKDE_VERSION}

SHARED_LIBS =		akonadi-filestore	0.0 # 4.7
SHARED_LIBS +=		akonadi-xml		0.0 # 4.7
SHARED_LIBS +=		kdepim-copy		0.0 # 4.7
SHARED_LIBS +=		kmindexreader		0.0 # 4.7
SHARED_LIBS +=		maildir			0.0 # 4.7

WANTLIB =  c m pthread stdc++ xml2
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += akonadi-calendar
WANTLIB += akonadi-contact akonadi-kabc akonadi-kcal akonadi-kde
WANTLIB += akonadi-kmime akonadi-notes akonadiprotocolinternals kabc
WANTLIB += kalarmcal kcal kcalcore kcalutils kcmutils kdewebkit
WANTLIB += kdeui kgapi kidletime kimap kio
WANTLIB += kmbox kmime knewstuff3 knotifyconfig kparts kpimidentities
WANTLIB += kpimtextedit kpimutils kresources krosscore
WANTLIB += mailtransport microblog nepomuk nepomukutils phonon qjson
WANTLIB += solid soprano streamanalyzer streams

BUILD_DEPENDS =		devel/boost \
			textproc/raptor

LIB_DEPENDS =		databases/soprano \
			databases/strigi \
			devel/qjson \
			multimedia/phonon \
			x11/kde4/akonadi \
			x11/kde4/libkgapi>=0.4.0 \
			STEM->=${MODKDE4_VERSION}:x11/kde4/pimlibs

# Long dependency chain, not ported yet.
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Libkolab:Bool=TRUE

.include <bsd.port.mk>
