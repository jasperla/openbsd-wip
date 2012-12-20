# $OpenBSD$

COMMENT =	solitare board KDE game based on Mah Jongg ideas
DISTNAME =	kshisen-${MODKDE_VERSION}

MODKDE4_USE =	games

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += kdeui kmahjongglib

LIB_DEPENDS =	STEM->=${MODKDE_VERSION}:x11/kde4/libkmahjongg

.include <bsd.port.mk>
