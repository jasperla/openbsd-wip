# $OpenBSD$

COMMENT =	vocabulary trainer for KDE
DISTNAME =	parley-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/keduvocdocument
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts ${KDE4LIB}/krosscore
WANTLIB += ${KDE4LIB}/krossui ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma
WANTLIB += soprano xml2 xslt

MODULES =	multimedia/phonon

LIB_DEPENDS = 	textproc/libxml \
		textproc/libxslt \
		productivity/attica \
		${MODKDE4_DEP_DIR}/libkdeedu

.include <bsd.port.mk>
