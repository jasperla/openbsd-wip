# $OpenBSD$

CATEGORIES =	devel
COMMENT =	KDE 4 bindings for .NET
DISTNAME =	kimono-${MODKDE_VERSION}

SHARED_LIBS =	kimono			0.0 # 2.0
SHARED_LIBS +=	khtml-sharp		0.0
SHARED_LIBS +=	ktexteditor-sharp	0.0
SHARED_LIBS +=	nepomuk-sharp		0.0
SHARED_LIBS +=	plasma-sharp		0.0
SHARED_LIBS +=	soprano-sharp		0.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio kparts ktexteditor
WANTLIB += nepomuk nepomukquery nepomukutils plasma qyoto
WANTLIB += soprano sopranoclient sopranoindex sopranoserver
WANTLIB += smokebase smokeqtcore smokekdecore smokekdeui
WANTLIB += smokekfile smokekhtml smokekio smokeknewstuff2
WANTLIB += smokeknewstuff3 smokekparts smokektexteditor smokekutils
WANTLIB += smokenepomuk smokeplasma smokeqtdbus smokeqtgui
WANTLIB += smokeqtnetwork smokeqtopengl smokeqtsql smokeqtsvg
WANTLIB += smokeqtxml smokesoprano
WANTLIB += gc mono-2.0

MODULES =		lang/mono

MODKDE4_USE =

LIB_DEPENDS =		x11/kde4/qimageblitz \
			x11/kde4/qyoto \
			x11/kde4/smokekde

# Disable until KDE Smoke bug 283677 gets fixed,
# https://bugs.kde.org/show_bug.cgi?id=283677
CONFIGURE_ARGS =	-DBUILD_Akonadi:Bool=False

.include <bsd.port.mk>
