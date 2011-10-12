# $OpenBSD$

COMMENT =	KDE thumbnail creation plugins
DISTNAME =	kdegraphics-thumbnailers-${MODKDE_VERSION}

LIB_DEPENDS +=		x11/kde4/libs \
			x11/kde4/libkexiv2 \
			x11/kde4/libkdcraw \

RUN_DEPENDS +=		devel/desktop-file-utils

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdcraw kdecore kdeui kexiv2 kio

.include <bsd.port.mk>
