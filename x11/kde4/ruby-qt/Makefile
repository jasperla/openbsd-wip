# $OpenBSD$

CATEGORIES =	devel lang/ruby x11/kde4
COMMENT =	Qt4 bindings for Ruby
DISTNAME =	qtruby-${MODKDE4_VERSION}
PKGNAME =	ruby-qt-${MODKDE4_VERSION}
HOMEPAGE =	http://techbase.kde.org/Development/Languages/Ruby
REVISION =	0

SHARED_LIBS =	qtruby4shared		0.0 # 2.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokephonon ${KDE4LIB}/smokeqsci
WANTLIB += ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtdeclarative ${KDE4LIB}/smokeqtgui
WANTLIB += ${KDE4LIB}/smokeqtnetwork ${KDE4LIB}/smokeqtopengl
WANTLIB += ${KDE4LIB}/smokeqtscript ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqttest
WANTLIB += ${KDE4LIB}/smokeqtuitools ${KDE4LIB}/smokeqtwebkit
WANTLIB += ${KDE4LIB}/smokeqtxml ${KDE4LIB}/smokeqwt
WANTLIB += qscintilla2

MODULES =	lang/ruby
MODKDE4_USE =

MODRUBY_REV =		1.8
MODRUBY_ADJ_FILES =	*.rb rbqtapi
CONFIGURE_ARGS =	-DRUBY_EXECUTABLE=${RUBY}

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/smokeqt

PATCHORIG =	.ports.orig

.include <bsd.port.mk>
