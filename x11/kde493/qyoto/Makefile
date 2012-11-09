# $OpenBSD$

CATEGORIES =	devel
COMMENT =	Qt4 bindings for .NET/Mono
DISTNAME =	qyoto-${MODKDE_VERSION}

SHARED_LIBS =	qyoto			1.0 # 2.0
SHARED_LIBS +=	phonon-sharp		1.0
SHARED_LIBS +=	qscintilla-sharp	1.0
SHARED_LIBS +=	qtscript-sharp		1.0
SHARED_LIBS +=	qttest-sharp		1.0
SHARED_LIBS +=	qtuitools-sharp		1.0
SHARED_LIBS +=	qtwebkit-sharp		1.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += qscintilla2 smokebase smokephonon smokeqsci smokeqtcore
WANTLIB += smokeqtdbus smokeqtgui smokeqtnetwork smokeqtopengl
WANTLIB += smokeqtsql smokeqtsvg smokeqtxml
WANTLIB += smokeqtscript smokeqttest smokeqtuitools smokeqtwebkit

MODULES =	lang/mono

MODKDE4_USE =

LIB_DEPENDS =	editors/qscintilla \
		x11/kde4/smokeqt

CONFIGURE_ARGS =	-DPHONON_INCLUDE_DIR:String=${MODQT4_INCDIR}

NO_REGRESS =	Yes

.include <bsd.port.mk>
