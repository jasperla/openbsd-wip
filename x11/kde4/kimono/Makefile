# $OpenBSD$

CATEGORIES =	devel
COMMENT =	KDE 4 bindings for .NET
DISTNAME =	kimono-${MODKDE_VERSION}

SHARED_LIBS +=	kimono			0.0 # 2.0
SHARED_LIBS +=	khtml-sharp		0.0
SHARED_LIBS +=	ktexteditor-sharp	0.0
SHARED_LIBS +=	nepomuk-sharp		0.0
SHARED_LIBS +=	plasma-sharp		0.0
SHARED_LIBS +=	soprano-sharp		0.0

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml
WANTLIB += smokebase smokephonon smokeqsci smokeqtcore
WANTLIB += smokeqtdbus smokeqtgui smokeqtnetwork smokeqtopengl
WANTLIB += smokeqtsql smokeqtsvg smokeqtxml

MODULES =		lang/mono

LIB_DEPENDS =		x11/kde4/qimageblitz \
			x11/kde4/qyoto \
			x11/kde4/smokekde

# Disable until KDE Smoke bug 283677 gets fixed,
# https://bugs.kde.org/show_bug.cgi?id=283677
CONFIGURE_ARGS +=	-DBUILD_Akonadi:Bool=False

#NO_REGRESS =		Yes

.include <bsd.port.mk>
