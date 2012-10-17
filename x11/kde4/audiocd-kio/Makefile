# $OpenBSD$

COMMENT =	KDE KIOslave for accessing audio CDs
DISTNAME =	audiocd-kio-${MODKDE_VERSION}

MODKDE4_USE =	libs

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kcompactdisc kdeui kio
WANTLIB += FLAC cdda_interface cdda_paranoia ogg vorbis vorbisenc
WANTLIB += vorbisfile

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libvorbis \
		x11/kde4/libkcompactdisc

.include <bsd.port.mk>
