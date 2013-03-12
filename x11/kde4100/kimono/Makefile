# $OpenBSD$

CATEGORIES =	devel
COMMENT =	KDE4 bindings for .NET
DISTNAME =	kimono-${MODKDE4_VERSION}

SHARED_LIBS =	kimono			1.1 # 2.0
SHARED_LIBS +=	akonadi-sharp		2.0
SHARED_LIBS +=	khtml-sharp		1.1
SHARED_LIBS +=	ktexteditor-sharp	1.1
SHARED_LIBS +=	nepomuk-sharp		1.1
SHARED_LIBS +=	plasma-sharp		1.1
SHARED_LIBS +=	soprano-sharp		1.1

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
			productivity/akonadi>=${MIN_AKONADI_VERSION} \
			x11/kde4/nepomuk-core>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =		productivity/akonadi>=${MIN_AKONADI_VERSION} \
			x11/kde4/nepomuk-core>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS =		databases/soprano>=${MIN_SOPRANO_VERSION} \
			devel/boehm-gc \
			x11/kde4/qyoto>=${MODKDE4_DEP_VERSION} \
			x11/kde4/smokekde>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
