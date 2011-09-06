# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, base runtime
DISTNAME =	kde-runtime-${VERSION}

SHARED_LIBS +=	kwalletbackend 		0.0	# 4.7
SHARED_LIBS +=	molletnetwork 		0.0	# 4.7
SHARED_LIBS +=	nepomuksync 		4.7	# 4.7

USE_GROFF =	Yes

LIB_DEPENDS +=		x11/kde4/attica \
			x11/kde4/libs \
			multimedia/phonon \
			databases/soprano \
			graphics/exiv2
			net/samba \
			multimedia/xine-lib \
			security/libssh \

BUILD_DEPENDS +=	archivers/bzip2 \
			archivers/xz \

RUN_DEPENDS +=		archivers/bzip2 \
			archivers/xz \

WANTLIB += c m pthread stdc++ util
WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xpm
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += attica kcmutils kdewebkit kemoticons kidletime kio kjs
WANTLIB += kdecore>=8 kdesu kdeui kdnssd kfile khtml kmediaplayer
WANTLIB += knewstuff3 knotifyconfig kparts kpty nepomuk nepomukquery
WANTLIB += nepomukutils phonon>=6 plasma solid soprano
WANTLIB += sopranoclient sopranoserver streamanalyzer streams
WANTLIB += Half Iex IlmImf IlmThread IlmThread Imath
WANTLIB += exiv2 jpeg smbclient ssh xine

#pre-install:
# these come from libs
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common
# these come from phonon
#	mkdir -p ${PREFIX}/share/icons/oxygen

.include <bsd.port.mk>
