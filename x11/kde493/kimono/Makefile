# $OpenBSD$

CATEGORIES =	devel
COMMENT =	K Desktop Environment, KDE4 bindings for .NET
DISTNAME =	kimono-${MODKDE_VERSION}

SHARED_LIBS =	kimono			1.0 # 2.0
SHARED_LIBS +=	akonadi-sharp		1.0
SHARED_LIBS +=	khtml-sharp		1.0
SHARED_LIBS +=	ktexteditor-sharp	1.0
SHARED_LIBS +=	nepomuk-sharp		1.0
SHARED_LIBS +=	plasma-sharp		1.0
SHARED_LIBS +=	soprano-sharp		1.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += akonadi-kde akonadi-kmime kdecore kdeui kio kparts ktexteditor
WANTLIB += nepomuk nepomukquery nepomukutils plasma qyoto
WANTLIB += soprano sopranoclient sopranoindex sopranoserver
WANTLIB += smokeakonadi smokebase smokeqtcore smokekdecore smokekdeui
WANTLIB += smokekfile smokekhtml smokekio smokeknewstuff2
WANTLIB += smokeknewstuff3 smokekparts smokektexteditor smokekutils
WANTLIB += smokenepomuk smokeplasma smokeqtdbus smokeqtgui
WANTLIB += smokeqtnetwork smokeqtopengl smokeqtsql smokeqtsvg
WANTLIB += smokeqtxml smokesoprano
WANTLIB += gc mono-2.0

MODULES =		lang/mono
MODKDE4_USE =

BUILD_DEPENDS =		misc/shared-desktop-ontologies \
			x11/kde4/akonadi \
			x11/kde4/nepomuk-core

RUN_DEPENDS =		x11/kde4/akonadi \
			x11/kde4/nepomuk-core

LIB_DEPENDS =		databases/soprano \
			devel/boehm-gc \
			x11/kde4/qyoto \
			x11/kde4/smokekde

.include <bsd.port.mk>
