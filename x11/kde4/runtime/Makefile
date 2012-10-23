# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, base runtime
DISTNAME =	kde-runtime-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kwalletbackend 		0.0	# 4.7
SHARED_LIBS +=	molletnetwork 		0.0	# 4.7
#SHARED_LIBS +=	nepomukdatamanagement	0.0	# 4.7

WANTLIB =  c m stdc++ pthread util
WANTLIB +=  Half ICE Iex IlmImf IlmThread Imath SM X11 Xcursor Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += attica exiv2 jpeg kactivities kcmutils kdeclarative
WANTLIB += kdesu kdeui kdewebkit kdnssd kemoticons kfile khtml
WANTLIB += kio kjs kmediaplayer knewstuff3 knotifyconfig kparts
WANTLIB += kpty kxmlrpcclient nepomuk nepomukcore nepomukutils
WANTLIB += phonon plasma solid soprano
WANTLIB += glib-2.0 pulse pulse-mainloop-glib smbclient ssh xine canberra

MODKDE4_USE =	libs

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/doxygen \
		textproc/docbook \
		textproc/docbook-xsl

RUN_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/desktop-file-utils

LIB_DEPENDS =	audio/libcanberra \
		audio/pulseaudio \
		databases/soprano \
		graphics/exiv2 \
		multimedia/phonon \
		multimedia/xine-lib \
		net/samba \
		security/libssh \
		x11/kde4/attica \
		STEM->=${MODKDE4_VERSION}:x11/kde4/kactivities \
		STEM->=${MODKDE4_VERSION}:x11/kde4/nepomuk-core \
		STEM->=${MODKDE4_VERSION}:x11/kde4/pimlibs

# QNtrack depends on libnl, Linux-specific library.
CONFIGURE_ARGS =	-DWITH_ALSA:Bool=FALSE \
			-DCMAKE_DISABLE_FIND_PACKAGE_SLP:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QNtrack:Bool=TRUE

WRONG_SYSCONF_FILES =	dbus-1	share/examples \
			xdg	share/examples

.include <bsd.port.mk>
