# $OpenBSD$

COMMENT =	KDE thumbnail creation plugins
DISTNAME =	kdegraphics-thumbnailers-${MODKDE_VERSION}

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdcraw kdeui kexiv2 kio

LIB_DEPENDS =	x11/kde4/libkexiv2 \
		x11/kde4/libkdcraw \

.include <bsd.port.mk>
