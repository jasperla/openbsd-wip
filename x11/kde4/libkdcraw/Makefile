# $OpenBSD$

COMMENT =	K Desktop Environment, interface to LibRaw to decode RAW images
DISTNAME =	libkdcraw-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kdcraw			0.0	# 20.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio
WANTLIB += jpeg lcms

MODKDE4_USE =	libs

LIB_DEPENDS = 	x11/kde4/libkipi \
		graphics/lcms \
		graphics/jpeg

RUN_DEPENDS = 	x11/gtk+2,-guic

CONFIGURE_ARGS =	-DWITH_OpenMP:Bool=FALSE

.include <bsd.port.mk>
