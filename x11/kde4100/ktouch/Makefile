# $OpenBSD$

COMMENT =	touch typing learning tool for KDE4
DISTNAME =	ktouch-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext xkbfile
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += kcmutils kdeclarative kdeui kio plasma

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
