# $OpenBSD$

COMMENT =	digital cameras RAW images manipulation library for KDE
DISTNAME =	libkdcraw-${MODKDE_VERSION}

SHARED_LIBS =	kdcraw			0.0	# 20.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio
WANTLIB += jpeg lcms

MODKDE4_USE =	libs

LIB_DEPENDS = 	x11/kde4/libkipi \
		graphics/lcms \
		graphics/jpeg

.include <bsd.port.mk>
