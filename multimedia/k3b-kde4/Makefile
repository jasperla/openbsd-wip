# $OpenBSD: Makefile,v 1.20 2013/01/19 09:51:30 brad Exp $

COMMENT =		CD/DVD creator
DISTNAME =		k3b-2.0.2
CATEGORIES =		multimedia

# bump away from KDE3 version
SHARED_LIBS =		k3blib		5.0
SHARED_LIBS +=		k3bdevice	5.0

HOMEPAGE =		http://www.k3b.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml
WANTLIB += kcddb kcmutils kde3support kdeui kemoticons kfile
WANTLIB += kidletime kio knotifyconfig kparts kprintutils kpty
WANTLIB += kutils nepomuk nepomukutils solid soprano
WANTLIB += FLAC FLAC++ avcodec avformat avutil dvdread mad mp3lame
WANTLIB += mpcdec samplerate sndfile tag vorbis

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=k3b/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4 devel/gettext

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic

# Optional
#			audio/sox \
#			misc/cdrdao \
#			multimedia/transcode \
#			sysutils/cdrtools \
#			sysutils/dvd+rw-tools \

LIB_DEPENDS =		audio/flac \
			audio/lame \
			audio/libmad \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/taglib \
			devel/libdvdread \
			graphics/ffmpeg>=20121026 \
			${MODKDE4_DEP_DIR}/libkcddb>=${MODKDE4_DEP_VERSION}

CONFIGURE_ARGS =	-DK3B_ENABLE_MUSICBRAINZ:Bool=No

.include <bsd.port.mk>
