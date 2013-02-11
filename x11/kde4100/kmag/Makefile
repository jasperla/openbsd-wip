# $OpenBSD$

COMMENT =	K Desktop Environment, screen magnifier
DISTNAME =	kmag-${MODKDE_VERSION}

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml c kdeui kio m pthread stdc++

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

CONFIGURE_ARGS =	-DWITH_QAccessibilityClient:Bool=No

.include <bsd.port.mk>
