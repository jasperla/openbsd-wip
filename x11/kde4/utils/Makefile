# $OpenBSD: Makefile,v 1.10 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, utils
DISTNAME =	kdeutils-${MODKDE_VERSION}

USE_GROFF =	Yes

SHARED_LIBS +=	libkremotecontrol	0.0	# 1.0
SHARED_LIBS +=	kerfuffle		0.0	# 4.0
SHARED_LIBS +=	superkaramba		0.0	# 4.0

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/pimlibs \
		devel/gmp \
		x11/kde4/qimageblitz \
		x11/kde4/workspace \
		x11/kde4/baseapps \
		python->=2.7,<2.8:lang/python/2.7 \
		archivers/libarchive \
		print/system-config-printer \
		print/py-cups

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xrender archive c gmp kabc>=5 \
	kde3support kdecore>=8 kdeui kfile khtml kio kjs knewstuff2 konq \
	kparts kpimutils kpty kresources krosscore kutils lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript \
	lib/qt4/QtSvg lib/qt4/QtXml m plasma pthread python2.7 qimageblitz \
	solid stdc++ util
WANTLIB += lib/qt4/QtXmlPatterns kcmutils kemoticons kidletime kprintutils
WANTLIB += nepomuk nepomukutils phonon raptor2 soprano


# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

CONFIGURE_ARGS +=	 -DINSTALL_PRINTER_APPLET=TRUE
MAKE_FLAGS +=		 -DINSTALL_PRINTER_APPLET=TRUE

.include <bsd.port.mk>
