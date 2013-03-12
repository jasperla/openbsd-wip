# $OpenBSD$

COMMENT =	solitare games collection for KDE4
DISTNAME =	kpat-${MODKDE4_VERSION}

SHARED_LIBS =	kcardgame	0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3

MODULES =	multimedia/phonon
MODKDE4_USE =	games

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

.include <bsd.port.mk>
