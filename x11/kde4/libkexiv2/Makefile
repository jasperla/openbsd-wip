# $OpenBSD$

COMMENT =	image plugins infrastructure for KDE
DISTNAME =	libkexiv2-${VERSION}

SHARED_LIBS +=	kexiv2			0.0	# 10.0

LIB_DEPENDS += 	x11/kde4/libs \
		exiv2->=0.20:graphics/exiv2

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui
WANTLIB += exiv2

.include <bsd.port.mk>
