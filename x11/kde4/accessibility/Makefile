# $OpenBSD$

COMMENT =		K Desktop Environment, accessibility
DISTNAME =		kdeaccessibility-${VERSION}

#SHARED_LIBS +=  kttsd             3.0 # .4.0

LIB_DEPENDS += 		x11/kde4/libs

WANTLIB += c m pthread stdc++
WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kde3support kdecore kdeui kio phonon>=6

USE_GROFF =	Yes

# CONFIGURE_ARGS +=	-DKDE4_KTTSD_ALSA:BOOL=OFF

# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
