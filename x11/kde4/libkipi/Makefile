# $OpenBSD$

COMMENT =	image plugins infrastructure for KDE
DISTNAME =	libkipi-${MODKDE_VERSION}

SHARED_LIBS +=  kipi           0.0 # 4.7

LIB_DEPENDS += 	x11/kde4/libs

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml c kdecore kdeui
WANTLIB += kio m stdc++
WANTLIB += kfile kparts nepomuk nepomukutils soprano

.include <bsd.port.mk>
