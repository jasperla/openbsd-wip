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
		graphics/ffmpeg

# Looks like Xine doesn't work
#		multimedia/xine-lib

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kde3support kdecore>=8 kdeui khtml kio kjs kparts
WANTLIB += nepomuk nepomukutils phonon>=6 plasma solid soprano
WANTLIB += FLAC avcodec avformat avutil cdda_interface cdda_paranoia
WANTLIB += musicbrainz3 ogg swscale tag vorbis vorbisenc vorbisfile

# See above
# WANTLIB += xine

# PulseAudio is not ready yet
CONFIGURE_ARGS =	-DPULSEAUDIO_FOUND:Bool=FALSE

# Doesn't worth to port, RDF WebService in MusicBrainz is deprecated
CONFIGURE_ARGS +=	-DTUNEPIMP_FOUND:Bool=FALSE

# See above
CONFIGURE_ARGS +=	-DXINE_XCB_FOUND:Bool=FALSE

.include <bsd.port.mk>
