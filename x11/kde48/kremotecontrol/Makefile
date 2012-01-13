# $OpenBSD$

COMMENT =	KDE frontend for remote controls
DISTNAME =	kremotecontrol-${MODKDE_VERSION}

SHARED_LIBS +=	libkremotecontrol	0.0 # 1.0

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns X11 Xtst
WANTLIB += c kdeui kio m plasma pthread stdc++

BUILD_DEPENDS +=	x11/kde48/workspace

.include <bsd.port.mk>
