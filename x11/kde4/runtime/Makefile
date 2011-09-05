# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =		K Desktop Environment, base runtime
DISTNAME =		kde-runtime-${VERSION}

LIB_DEPENDS +=	x11/kde4/libs \
		multimedia/phonon \
		net/samba \
		databases/soprano \
		security/libssh \
		multimedia/xine-lib

SHARED_LIBS +=	kwalletbackend 		0.0	# 4.7
SHARED_LIBS +=	molletnetwork 		0.0	# 4.7
SHARED_LIBS +=	nepomuksync 		4.7	# 4.7
USE_GROFF =	Yes

WANTLIB += Half ICE Iex IlmImf IlmThread IlmThread Imath SM X11 Xau Xcursor \
	Xdmcp Xext Xft Xpm attica c exiv2 jpeg kdecore>=8 kdesu \
	kdeui kdnssd kfile khtml kio kjs kmediaplayer knewstuff3 \
	knotifyconfig kparts kpty lib/qt4/QtDBus \
	lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg \
	lib/qt4/QtXml m nepomuk nepomukquery phonon>=6 plasma pthread \
	smbclient solid soprano sopranoclient sopranoserver stdc++ \
	streamanalyzer streams util xine
WANTLIB += QtDeclarative QtWebKit kcmutils kdewebkit kemoticons
WANTLIB += kidletime nepomukutils ssh


#pre-install:
# these come from libs
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common
# these come from phonon
#	mkdir -p ${PREFIX}/share/icons/oxygen

.include <bsd.port.mk>
