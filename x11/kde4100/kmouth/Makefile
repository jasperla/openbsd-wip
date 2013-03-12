# $OpenBSD$

COMMENT =	speech tool for mute persons for KDE4
DISTNAME =	kmouth-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtXml kde3support kdeui kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/kde4/jovie>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
