# $OpenBSD$

COMMENT =	exiv2 wrapper for KDE
DISTNAME =	libkexiv2-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kexiv2			0.0	# 10.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui
WANTLIB += exiv2

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/exiv2>=0.22

.include <bsd.port.mk>
