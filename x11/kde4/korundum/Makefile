# $OpenBSD$

COMMENT =	KDE 4 bindings for Ruby
DISTNAME =	korundum-${MODKDE_VERSION}
REVISION =	0

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


MODKDE4_USE =	libs pim

RUN_DEPENDS =	x11/kde4/kross-interpreters

LIB_DEPENDS = 	x11/kde4/kate \
		x11/kde4/ruby-qt \
		x11/kde4/smokekde

# Disable until KDE Smoke bug 283677 gets fixed,
# https://bugs.kde.org/show_bug.cgi?id=283677
CONFIGURE_ARGS =	-DBUILD_Akonadi:Bool=False

# copy aja@ trick from audio/speech-dispatcher and allow it to FindRuby.cmake
pre-configure:
	perl -pi -e 's,RUBY REQUIRED,Ruby REQUIRED,g' \
		${WRKSRC}/examples/dbpedia_references/CMakeLists.txt \
		${WRKSRC}/modules/plasma/examples/applets/digital-clock/CMakeLists.txt \
		${WRKSRC}/modules/plasma/examples/applets/analog-clock/CMakeLists.txt

.include <bsd.port.mk>

