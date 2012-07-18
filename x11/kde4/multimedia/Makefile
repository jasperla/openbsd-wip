# $OpenBSD: Makefile,v 1.5 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, multimedia
DISTNAME =	kdemultimedia-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	audiocdplugins		4.0  # .4.0
SHARED_LIBS +=	kcddb			4.0  # .4.0
SHARED_LIBS +=	kcompactdisc		4.0  # .4.0

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libogg \
		audio/libmusicbrainz \
		audio/libvorbis \
		audio/taglib \
		audio/pulseaudio \
		graphics/ffmpeg

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kde3support kdeui khtml kio kjs kparts
WANTLIB += nepomuk nepomukutils phonon>=6 plasma solid soprano
WANTLIB += FLAC avcodec avformat avutil cdda_interface cdda_paranoia
WANTLIB += musicbrainz3 ogg swscale tag vorbis vorbisenc vorbisfile

# CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=TRUE

# Doesn't worth to port, RDF WebService in MusicBrainz is deprecated
CONFIGURE_ARGS +=	-DWITH_TunePimp:Bool=FALSE

.include <bsd.port.mk>
