# $OpenBSD$

COMMENT =	VLC-based Phonon backend
VERSION =	0.4.1
DISTNAME =	phonon-backend-vlc-${VERSION}
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}

#SHARED_LIBS +=		phonon 6.0

LIB_DEPENDS +=	vlc->=1.1.1:x11/vlc

WANTLIB +=  stdc++ vlc

.include <bsd.port.mk>
