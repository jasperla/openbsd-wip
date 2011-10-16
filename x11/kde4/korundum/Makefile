# $OpenBSD$

COMMENT =	KDE 4 bindings for Ruby
DISTNAME =	korundum-${MODKDE_VERSION}

MODULES =	lang/ruby

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kcmutils kdecore kdeui kdnssd kemoticons kfile khtml
WANTLIB += kidletime kio kjs knewstuff2 knewstuff3 kparts kprintutils
WANTLIB += kpty ktexteditor kutils nepomuk nepomukquery nepomukutils
WANTLIB += phonon plasma solid soprano sopranoclient sopranoserver

MODKDE4_USE =	libs pim

RUN_DEPENDS =	x11/kde4/kross-interpreters

LIB_DEPENDS = 	x11/kde4/kate \
		x11/kde4/qtruby \
		x11/kde4/smokekde

# Disable until KDE Smoke bug 283677 gets fixed,
# https://bugs.kde.org/show_bug.cgi?id=283677
CONFIGURE_ARGS =	-DBUILD_Akonadi:Bool=False

.include <bsd.port.mk>
