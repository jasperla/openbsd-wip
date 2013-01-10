# $OpenBSD$

COMMENT =	K Desktop Environment, KDE4 bindings for Ruby
DISTNAME =	korundum-${MODKDE_VERSION}

MODULES =	devel/cmake lang/ruby

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtOpenGL lib/qt4/QtSql
WANTLIB += kcmutils kdeui kemoticons kidletime kio knewstuff2 kprintutils
WANTLIB += kpty kutils kateinterfaces nepomuk okularcore
WANTLIB += pthread qtruby4shared
WANTLIB += smokebase smokekate smokekdecore smokekdeui smokekfile
WANTLIB += smokekhtml smokekio smokeknewstuff2 smokeknewstuff3
WANTLIB += smokekparts smokektexteditor smokekutils smokenepomuk
WANTLIB += smokeokular smokeplasma smokeqtcore smokeqtdbus smokeqtgui
WANTLIB += smokeqtnetwork smokeqtopengl smokeqtsql smokeqtsvg
WANTLIB += smokeqtxml smokesolid smokesoprano solid soprano
WANTLIB += akonadi-kde akonadi-kmime smokeakonadi

MODKDE4_USE =	libs pim

RUN_DEPENDS =	x11/kde4/kross-interpreters

LIB_DEPENDS = 	x11/kde4/kate \
		x11/kde4/ruby-qt \
		x11/kde4/smokekde

# copy aja@ trick from audio/speech-dispatcher and allow it to FindRuby.cmake
pre-configure:
	perl -pi -e 's,RUBY REQUIRED,Ruby REQUIRED,g' \
		${WRKSRC}/examples/dbpedia_references/CMakeLists.txt \
		${WRKSRC}/modules/plasma/examples/applets/digital-clock/CMakeLists.txt \
		${WRKSRC}/modules/plasma/examples/applets/analog-clock/CMakeLists.txt

.include <bsd.port.mk>

