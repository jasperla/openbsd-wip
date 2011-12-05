# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, base runtime
DISTNAME =	kde-runtime-${MODKDE_VERSION}

SHARED_LIBS =	kwalletbackend 		0.0	# 4.7
SHARED_LIBS +=	molletnetwork 		0.0	# 4.7
SHARED_LIBS +=	nepomuksync 		4.7	# 4.7

WANTLIB += Half ICE Iex IlmImf IlmThread Imath
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml SM X11 Xcursor
WANTLIB += Xext attica c exiv2 jpeg kcmutils kdeclarative kdesu
WANTLIB += kdeui kdewebkit kdnssd kemoticons kfile khtml kidletime
WANTLIB += kio kjs kmediaplayer knewstuff3 knotifyconfig kparts
WANTLIB += kpty m nepomuk nepomukquery nepomukutils phonon plasma
WANTLIB += pthread smbclient solid soprano sopranoclient sopranoserver
WANTLIB += ssh stdc++ streamanalyzer streams util xine

MODKDE4_USE =	libs

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz

RUN_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/desktop-file-utils

LIB_DEPENDS =	databases/soprano \
		graphics/exiv2 \
		multimedia/phonon \
		multimedia/xine-lib \
		net/samba \
		productivity/qzeitgeist \
		security/libssh \
		x11/kde48/attica

# PulseAudio is not fully workable yet.
# QNtrack depends on libnl, Linux-specific library.

CONFIGURE_ARGS =	-DPULSEAUDIO_FOUND:Bool=FALSE \
			-DSLP_FOUND:Bool=FALSE \
			-DQNTRACK_FOUND:Bool=FALSE

WRONG_SYSCONF_FILES =	dbus-1	share/examples \
			xdg	share/examples

.include <bsd.port.mk>
