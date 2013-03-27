# $OpenBSD$

COMMENT =	KDE 4 bindings for Python
DISTNAME =	pykde4-${MODKDE4_VERSION}
PKGNAME =	py-kde-${MODKDE4_VERSION}

MODULES =	lang/python

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/knewstuff2 ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/kpty ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukquery
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/phonon_s ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${MODPY_WANTLIB} soprano sopranoclient sopranoserver

VMEM_WARNING =  Yes

MODKDE4_USE =	libs pim

BUILD_DEPENDS =	x11/kde4/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		devel/py-sip>=4.14.1 \
		misc/shared-desktop-ontologies \
		x11/py-qt4>=4.9.5 \

RUN_DEPENDS =	x11/kde4/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		misc/shared-desktop-ontologies \
		x11/py-qt4>=4.9.5

LIB_DEPENDS = 	databases/soprano>=${MIN_SOPRANO_VERSION}

# One who said that Polkit-Qt-1 is a drop-in replacement
# for Polkit-Qt, is probably the one who said that
# 640 kilobytes ought to be enough for everybody.
CONFIGURE_ARGS =	-DWITH_PolkitQt:Bool=FALSE

.include <bsd.port.mk>
