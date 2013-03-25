# $OpenBSD$

COMMENT =	Mah Jongg solitare board game for KDE
DISTNAME =	kmahjongg-${MODKDE4_VERSION}

MODKDE4_USE =	games

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdegamesprivate ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kmahjongglib

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	x11/kde4/libkmahjongg>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
