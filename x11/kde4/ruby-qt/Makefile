# $OpenBSD$

CATEGORIES =	devel lang/ruby x11/kde4
COMMENT =	K Desktop Environment, Qt4 bindings for Ruby
DISTNAME =	qtruby-${MODKDE_VERSION}
PKGNAME =	ruby-qt-${MODKDE_VERSION}
HOMEPAGE =	http://techbase.kde.org/Development/Languages/Ruby

SHARED_LIBS =	qtruby4shared		0.0 # 2.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/phonon
WANTLIB += qscintilla2 smokebase smokephonon smokeqsci smokeqtcore
WANTLIB += smokeqtdbus smokeqtdeclarative smokeqtgui smokeqtnetwork
WANTLIB += smokeqtopengl smokeqtscript smokeqtsql smokeqtsvg
WANTLIB += smokeqttest smokeqtuitools smokeqtwebkit smokeqtxml smokeqwt

MODULES =		x11/kde4 lang/ruby

MODKDE4_USE =

LIB_DEPENDS =		x11/kde4/smokeqt

PATCHORIG =		.ports.orig

post-patch:
	@echo "====> Adjusting shebangs"
	@cd ${WRKSRC} && find . -name '*.rb' | while read F; do \
		echo -n "\t$$F"; \
		${MODRUBY_RUBY_ADJ} "$$F"; \
		echo; \
	done

.include <bsd.port.mk>
