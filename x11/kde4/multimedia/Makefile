# $OpenBSD: Makefile,v 1.5 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, multimedia
DISTNAME =	kdemultimedia-${VERSION}
REVISION =	0

SHARED_LIBS += audiocdplugins 4.0	# .4.0
SHARED_LIBS += kcddb          4.0       # .4.0
SHARED_LIBS += kcompactdisc   4.0       # .4.0

LIB_DEPENDS +=	x11/kde4/libs \
		audio/flac \
		audio/cdparanoia \
		audio/libogg \
		audio/taglib \
		audio/libmusicbrainz \
		audio/libvorbis \
		graphics/ffmpeg

WANTLIB += FLAC c cdda_interface cdda_paranoia kde3support kdecore>=8 kdeui \
	khtml kio kjs kparts lib/qt4/Qt3Support lib/qt4/QtDBus \
	lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml m ogg \
	phonon>=6 pthread solid stdc++ tag vorbis vorbisenc vorbisfile
WANTLIB += avcodec avformat avutil musicbrainz3 nepomuk nepomukutils phonon
WANTLIB += plasma soprano swscale

# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
