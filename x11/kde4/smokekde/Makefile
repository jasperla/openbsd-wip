# $OpenBSD$

CATEGORIES =	devel
COMMENT =	K Desktop Environment, introspective wrappers around KDE
DISTNAME =	smokekde-${MODKDE_VERSION}


SHARED_LIBS =	smokeakonadi		0.0 # 3.0
SHARED_LIBS +=	smokeattica		0.0 # 3.0
SHARED_LIBS +=	smokekate		0.0 # 3.0
SHARED_LIBS +=	smokekdecore		0.0 # 3.0
SHARED_LIBS +=	smokekdeui		0.0 # 3.0
SHARED_LIBS +=	smokekfile		0.0 # 3.0
SHARED_LIBS +=	smokekhtml		0.0 # 3.0
SHARED_LIBS +=	smokekio		0.0 # 3.0
SHARED_LIBS +=	smokeknewstuff2		0.0 # 3.0
SHARED_LIBS +=	smokeknewstuff3		0.0 # 3.0
SHARED_LIBS +=	smokekparts		0.0 # 3.0
SHARED_LIBS +=	smokektexteditor	0.0 # 3.0
SHARED_LIBS +=	smokekutils		0.0 # 3.0
SHARED_LIBS +=	smokenepomuk		0.0 # 3.0
SHARED_LIBS +=	smokenepomukquery	0.0 # 3.0
SHARED_LIBS +=	smokeokular		0.0 # 3.0
SHARED_LIBS +=	smokeplasma		0.0 # 3.0
SHARED_LIBS +=	smokesolid		0.0 # 3.0
SHARED_LIBS +=	smokesoprano		0.0 # 3.0
SHARED_LIBS +=	smokesopranoclient	0.0 # 3.0
SHARED_LIBS +=	smokesopranoserver	0.0 # 3.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += attica kateinterfaces kcmutils kde3support kdeui
WANTLIB += kemoticons kfile khtml kidletime kio kjs knewstuff2
WANTLIB += knewstuff3 kparts kprintutils ktexteditor nepomuk
WANTLIB += nepomukquery nepomukutils okularcore phonon plasma smokebase
WANTLIB += smokeqtcore smokeqtdbus smokeqtgui smokeqtnetwork smokeqtsvg
WANTLIB += smokeqtxml solid soprano sopranoclient sopranoserver
WANTLIB += akonadi-contact akonadi-kabc akonadi-kde akonadi-kmime
WANTLIB += kabc kcalcore kmime kpimutils kresources

MODKDE4_USE =	libs pim

LIB_DEPENDS =	databases/soprano \
		x11/kde4/akonadi \
		x11/kde4/attica \
		x11/kde4/kate \
		x11/kde4/okular \
		x11/kde4/smokegen \
		x11/kde4/smokeqt

.include <bsd.port.mk>
