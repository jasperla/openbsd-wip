# $OpenBSD: Makefile,v 1.12 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, PIM runtime support
DISTNAME =	kdepim-runtime-${MODKDE_VERSION}

SHARED_LIBS +=  akonadi-filestore         0.0 # 4.7
SHARED_LIBS +=  akonadi-xml               0.0 # 4.7
SHARED_LIBS +=  kdepim-copy               0.0 # 4.7
SHARED_LIBS +=  kmindexreader             0.0 # 4.7
SHARED_LIBS +=  maildir                   0.0 # 4.7

BUILD_DEPENDS +=	devel/boost \
			x11/kde4/automoc

LIB_DEPENDS +=		databases/soprano \
			databases/strigi \
			multimedia/phonon \
			x11/kde4/akonadi \
			x11/kde4/libs \
			x11/kde4/pimlibs

WANTLIB += c m pthread stdc++ xml2
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += akonadi-contact akonadi-kabc akonadi-kcal akonadi-kde
WANTLIB += akonadi-kmime akonadiprotocolinternals kabc kcal kcalcore
WANTLIB += kcalutils kcmutils kdecore kdeui kidletime kimap kio
WANTLIB += kmbox kmime knewstuff3 knotifyconfig kpimidentities
WANTLIB += kpimtextedit kpimutils kresources krosscore mailtransport
WANTLIB += microblog nepomuk nepomukquery phonon solid soprano
WANTLIB += streamanalyzer streams

.include <bsd.port.mk>
