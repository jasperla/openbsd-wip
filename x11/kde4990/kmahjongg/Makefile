# $OpenBSD$

COMMENT =	Mah Jongg solitare board game for KDE
DISTNAME =	kmahjongg-${MODKDE_VERSION}

MODKDE4_USE =	games

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdegamesprivate kdeui kio kmahjongglib

LIB_DEPENDS =	STEM->=${MODKDE_VERSION}:x11/kde4/libkmahjongg

.include <bsd.port.mk>
