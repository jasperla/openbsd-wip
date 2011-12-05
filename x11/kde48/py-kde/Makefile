# $OpenBSD$

COMMENT =	KDE 4 bindings for Python
DISTNAME =	pykde-${MODKDE_VERSION}
PKGNAME =	py-kde-${MODKDE_VERSION}

MODULES =	lang/python

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += akonadi-kde akonadi-kmime
WANTLIB += kcmutils kdeui kdnssd kemoticons kfile khtml
WANTLIB += kidletime kio kjs knewstuff2 knewstuff3 kparts kprintutils
WANTLIB += kpty ktexteditor kutils nepomuk nepomukquery nepomukutils
WANTLIB += phonon plasma solid soprano sopranoclient sopranoserver
WANTLIB += ${MODPY_WANTLIB}

MODKDE4_USE =	libs pim

BUILD_DEPENDS =	devel/py-sip \
		misc/shared-desktop-ontologies

RUN_DEPENDS =	misc/shared-desktop-ontologies

LIB_DEPENDS = 	databases/soprano \
		py-qt4->=4.8.4p2:x11/py-qt4 \
		x11/polkit-qt4

# One who said that Polkit-Qt-1 is a drop-in replacement
# for Polkit-Qt, is probably the one who said that
# 640 kilobytes ought to be enough for everybody.
CONFIGURE_ARGS =	-DWITH_PolkitQt:Bool=FALSE

.include <bsd.port.mk>
