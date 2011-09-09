# $OpenBSD$

COMMENT =		libraries used by the KDE Education Project applications
DISTNAME =		libkdeedu-${VERSION}

SHARED_LIBS +=  keduvocdocument           0.0 # 4.7

LIB_DEPENDS += 	x11/kde4/libs

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml c kdecore kdeui
WANTLIB += kio m stdc++

.include <bsd.port.mk>
