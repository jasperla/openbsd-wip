# $OpenBSD$

COMMENT =	K Desktop Environment, base applications
DISTNAME =	kde-baseapps-${MODKDE_VERSION}

SHARED_LIBS +=	konq			8.0	# 6.0
SHARED_LIBS +=	konqsidebarplugin	5.0	# 4.0
SHARED_LIBS +=	dolphinprivate		0.0	# 1.0
SHARED_LIBS +=	konquerorprivate	0.0	# 4.0
SHARED_LIBS +=	kbookmarkmodel_private	0.0	# 4.7

USE_GROFF =	Yes

WANTLIB += c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext Xt
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kcmutils kde3support kdecore>=8 kdesu kdeui kfile khtml kio
WANTLIB += kjs knewstuff3 kparts nepomuk nepomukquery nepomukutils
WANTLIB += phonon>=6 plasma solid soprano
WANTLIB += glib-2.0

BUILD_DEPENDS +=	x11/kde4/automoc

LIB_DEPENDS +=		x11/kde4/libs \
			multimedia/phonon

# Wants tidy, should be ported to tidyp
# RUN_DEPENDS +=		www/tidyp

.include <bsd.port.mk>
