# $OpenBSD$

COMMENT =		K Desktop Environment, base applications
DISTNAME =		kde-baseapps-${VERSION}
REVISION =		0

SHARED_LIBS +=	konq			8.0	# 6.0
SHARED_LIBS +=	konqsidebarplugin	5.0	# 4.0
SHARED_LIBS +=	dolphinprivate		0.0	# 1.0
SHARED_LIBS +=	konquerorprivate	0.0	# 4.0
SHARED_LIBS +=	kbookmarkmodel_private	0.0	# 4.7

USE_GROFF =	Yes
BUILD_DEPENDS +=	x11/kde4/automoc
LIB_DEPENDS +=		x11/kde4/libs \
			multimedia/phonon

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xt c glib-2.0 \
	kde3support kdecore>=8 kdesu kdeui kfile khtml kio kjs knewstuff3 \
	kparts lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m nepomuk nepomukquery phonon>=6 plasma pthread \
	solid soprano stdc++ z
WANTLIB += lib/qt4/QtScript kcmutils nepomukutils


# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
