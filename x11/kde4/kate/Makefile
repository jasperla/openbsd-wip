# $OpenBSD$

COMMENT =	KDE advanced text editor
DISTNAME =	kate-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kateinterfaces			0.0 # 4.7
SHARED_LIBS +=	katepartinterfaces		0.0 # 4.7
SHARED_LIBS +=	ktexteditor_codesnippets_core	0.0 # 0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdeui kemoticons kfile kidletime kio knewstuff2
WANTLIB += knewstuff3 kparts kprintutils ktexteditor kutils nepomuk
WANTLIB += nepomukutils plasma soprano

.include <bsd.port.mk>
