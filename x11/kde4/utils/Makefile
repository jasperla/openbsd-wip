# $OpenBSD: Makefile,v 1.10 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, utils
DISTNAME =	kdeutils-${MODKDE_VERSION}

SHARED_LIBS =	libkremotecontrol	0.0	# 1.0
SHARED_LIBS +=	kerfuffle		0.0	# 4.0
SHARED_LIBS +=	superkaramba		0.0	# 4.0

WANTLIB =  c m pthread stdc++ util 
WANTLIB += ICE SM X11 Xext Xrender Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns 
WANTLIB += archive gmp kabc>=5 kcmutils kde3support kdeui
WANTLIB += kemoticons kfile khtml kidletime kio kjs knewstuff2 konq
WANTLIB += kparts kpimutils kprintutils kpty kresources krosscore
WANTLIB += kutils nepomuk nepomukutils phonon soprano plasma
WANTLIB += qimageblitz solid
WANTLIB += ${MODPY_WANTLIB}

MODULES =	lang/python
MODKDE4_USE =	pim workspace

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		x11/py-qt4 \
		x11/kde4/py-kde

LIB_DEPENDS = 	devel/gmp \
		x11/kde4/qimageblitz \
		x11/kde4/baseapps \
		python->=2.7,<2.8:lang/python/2.7 \
		archivers/libarchive \
		print/system-config-printer \
		print/py-cups

RUN_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		x11/py-qt4 \
		x11/kde4/py-kde

CONFIGURE_ARGS =	 -DINSTALL_PRINTER_APPLET=TRUE

MAKE_FLAGS =		 -DINSTALL_PRINTER_APPLET=TRUE

.include <bsd.port.mk>
