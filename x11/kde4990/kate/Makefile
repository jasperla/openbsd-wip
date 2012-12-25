# $OpenBSD$

COMMENT =	K Desktop Environment, advanced text editor
DISTNAME =	kate-${MODKDE_VERSION}

SHARED_LIBS =	kateinterfaces			0.0 # 4.7
SHARED_LIBS +=	katepartinterfaces		0.0 # 4.7
#SHARED_LIBS +=	ktexteditor_codesnippets_core	0.0 # 0.0

WANTLIB =  c m pthread stdc++ ${MODPY_WANTLIB}
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kactivities kcmutils kdeui kemoticons kfile kidletime kio
WANTLIB += knewstuff3 kparts kprintutils ktexteditor kutils nepomuk
WANTLIB += nepomukutils plasma qjson soprano

MODULES =	lang/python

BUILD_DEPENDS =	x11/kde4/py-kde
RUN_DEPENDS =	x11/kde4/py-kde

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		devel/qjson \
		x11/kde4/kactivities

.include <bsd.port.mk>
