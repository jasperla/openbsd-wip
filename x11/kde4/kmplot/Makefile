# $OpenBSD$

COMMENT =	mathematical function plotter for KDE
DISTNAME =	kmplot-${MODKDE_VERSION}

LIB_DEPENDS += 	x11/kde4/libs

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/kde4/runtime

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdecore kdeui kio kparts nepomuk nepomukutils soprano

.include <bsd.port.mk>
