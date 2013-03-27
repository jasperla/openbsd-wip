# $OpenBSD$

COMMENT =	general purpose flash card program for KDE
DISTNAME =	kwordquiz-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/keduvocdocument ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kprintutils

MODULES =	multimedia/phonon

LIB_DEPENDS = 	x11/kde4/libkdeedu>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
