# $OpenBSD$

COMMENT =	scanner interface through libksane for KDE
DISTNAME =	ksaneplugin-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/ksane

LIB_DEPENDS = 	x11/kde4/libksane>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
