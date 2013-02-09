# $OpenBSD$

COMMENT =	K Desktop Environment, base applications
DISTNAME =	kde-baseapps-${MODKDE_VERSION}

SHARED_LIBS =	konq			8.0	# 6.0
SHARED_LIBS +=	konqsidebarplugin	5.0	# 4.0
SHARED_LIBS +=	dolphinprivate		0.0	# 1.0
SHARED_LIBS +=	konquerorprivate	0.0	# 4.0
SHARED_LIBS +=	kbookmarkmodel_private	0.0	# 4.7

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext Xt Xrender
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kactivities kcmutils kde3support kdesu kdeui kfile khtml kio
WANTLIB += kjs knewstuff3 kparts nepomuk nepomukcore nepomukutils
WANTLIB += nepomukwidgets phonon_s plasma solid soprano
WANTLIB += glib-2.0 tidyp

# KJS is broken, so allow KDE browsers to work out of the box
# using QtWebKit.
RUN_DEPENDS =	www/kwebkitpart

LIB_DEPENDS =	devel/glib2 \
		x11/kde4/kactivities \
		x11/kde4/nepomuk-core \
		x11/kde4/nepomuk-widgets \
		www/tidyp

.include <bsd.port.mk>
