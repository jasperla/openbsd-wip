# $OpenBSD$

COMMENT =	scanning in KDE through libksane
DISTNAME =	ksaneplugin-${MODKDE_VERSION}

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/libksane

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += kdecore kdeui kio ksane

.include <bsd.port.mk>
