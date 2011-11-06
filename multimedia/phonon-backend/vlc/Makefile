# $OpenBSD$

COMMENT =	VLC-based Phonon backend
VERSION =	0.4.1
DISTNAME =	phonon-backend-vlc-${VERSION}
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}

LIB_DEPENDS =	vlc->=1.1.1:x11/vlc

WANTLIB =	lib/qt4/QtDBus lib/qt4/QtGui m stdc++ vlc vlccore

.include <bsd.port.mk>
