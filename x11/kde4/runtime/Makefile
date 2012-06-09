# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, base runtime
DISTNAME =	kde-runtime-${MODKDE_VERSION}
REVISION =	1

SHARED_LIBS =	kwalletbackend 		0.0	# 4.7
SHARED_LIBS +=	molletnetwork 		0.0	# 4.7
SHARED_LIBS +=	nepomuksync 		4.7	# 4.7
SHARED_LIBS +=	nepomukdatamanagement 	0.0	# 4.8

WANTLIB += Half ICE Iex IlmImf IlmThread Imath
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml SM X11 Xcursor
WANTLIB += Xext attica c exiv2 jpeg kcmutils kdeclarative kdesu
WANTLIB += kdeui kdewebkit kdnssd kemoticons kfile khtml kidletime
WANTLIB += kio kjs kmediaplayer knewstuff3 knotifyconfig kparts
WANTLIB += kpty m nepomuk nepomukquery nepomukutils phonon plasma
WANTLIB += pthread smbclient solid soprano sopranoclient sopranoserver
WANTLIB += ssh stdc++ streamanalyzer streams util xine canberra
WANTLIB += glib-2.0 pulse pulse-mainloop-glib

MODKDE4_USE =	libs

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz

RUN_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/libcanberra \
		audio/pulseaudio \
		databases/soprano \
		graphics/exiv2 \
		multimedia/phonon \
		multimedia/xine-lib \
		net/samba \
		productivity/qzeitgeist \
		security/libssh \
		x11/kde4/attica

# PulseAudio is fully workable according to robert@, test it out.
# QNtrack depends on libnl, Linux-specific library.
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_ALSA:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_OpenSLP:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QNtrack:Bool=TRUE

WRONG_SYSCONF_FILES =	dbus-1	share/examples \
			xdg	share/examples

.include <bsd.port.mk>
