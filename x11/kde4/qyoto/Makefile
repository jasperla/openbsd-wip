# $OpenBSD$

CATEGORIES =		devel
COMMENT =		Qt 4 bindings for .NET
DISTNAME =		qyoto-${VERSION}

SHARED_LIBS +=	qyoto			0.0 # 2.0

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += qscintilla2 smokebase smokephonon smokeqsci smokeqtcore
WANTLIB += smokeqtdbus smokeqtgui smokeqtnetwork smokeqtopengl
WANTLIB += smokeqtsql smokeqtsvg smokeqtxml

MODULES =		lang/mono

LIB_DEPENDS =		editors/qscintilla \
			x11/kde4/qimageblitz \
			x11/kde4/smokeqt

NO_REGRESS =		Yes

.include <bsd.port.mk>
