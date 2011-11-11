# $OpenBSD$

SHARED_ONLY =	Yes

CATEGORIES =	devel lang/ruby x11/kde4
COMMENT =	Qt 4 bindings for Ruby
DISTNAME =	qtruby-${MODKDE_VERSION}
PKGNAME =	ruby-qt-${MODKDE_VERSION}
HOMEPAGE =	http://techbase.kde.org/Development/Languages/Ruby

SHARED_LIBS =	qtruby4shared		0.0 # 2.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += qscintilla2 smokebase smokephonon smokeqsci smokeqtcore
WANTLIB += smokeqtdbus smokeqtdeclarative smokeqtgui smokeqtnetwork
WANTLIB += smokeqtopengl smokeqtscript smokeqtsql smokeqtsvg
WANTLIB += smokeqttest smokeqtuitools smokeqtwebkit smokeqtxml smokeqwt

MODULES =		devel/cmake lang/ruby x11/qt4

MODKDE4_USE =

LIB_DEPENDS =		x11/kde4/smokeqt

PATCHORIG =		.ports.orig

.include <bsd.port.mk>
