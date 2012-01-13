# $OpenBSD$

COMMENT =	KDE, interface to GnuPG
DISTNAME =	kgpg-${MODKDE_VERSION}

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml c kabc kcmutils kdeui kemoticons kidletime kio
WANTLIB += kpimutils kprintutils kresources kutils m pthread solid stdc++

LIB_DEPENDS +=	x11/kde48/pimlibs

.include <bsd.port.mk>
