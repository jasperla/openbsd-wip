# $OpenBSD$

COMMENT =	K Desktop Environment, KDE4 bindings for Ruby
DISTNAME =	korundum-${MODKDE_VERSION}
REVISION =	2

WANTLIB =  c m stdc++ ${MODRUBY_WANTLIB}
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

MODULES =	lang/ruby
MODKDE4_USE =	libs pim
MODRUBY_REV =	1.9

RUN_DEPENDS =	x11/kde4/kross-interpreters

LIB_DEPENDS = 	x11/kde4/kate \
		x11/kde4/ruby-qt \
		x11/kde4/smokekde

# same as in ruby-qt
post-patch:
	@echo "====> Adjusting shebangs"
	@cd ${WRKSRC} && find . -name '*.rb' | while read F; do \
		echo -n "\t$$F"; \
		${MODRUBY_RUBY_ADJ} "$$F"; \
		echo; \
	done

.include <bsd.port.mk>

