# $OpenBSD$

COMMENT =	planetarium simulator for KDE
DISTNAME =	kstars-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += cfitsio wcs

LIB_DEPENDS = 	astro/wcslib \
		math/cfitsio

BUILD_DEPENDS =	math/eigen2 \
		x11/xplanet

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/xplanet

.include <bsd.port.mk>
