# $OpenBSD$

COMMENT = 		Qt4 / KDE4 Music Player Client

VERSION = 		1.2.2
REVISION = 		0
DISTNAME = 		cantata-${VERSION}
PKGNAME = 		cantata-${VERSION}

CATEGORIES = 		audio

MASTER_SITES = 		https://cantata.googlecode.com/files/
EXTRACT_SUFX = 		.tar.bz2

HOMEPAGE = 		http://code.google.com/p/cantata/

MAINTAINER = 		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml X11 avcodec avformat
WANTLIB += avutil c m lib/qt4/phonon  pthread qjson speexdsp stdc++ tag
WANTLIB += cdda_interface cdda_paranoia cddb mpg123 mtp musicbrainz5
WANTLIB += z

MODULES =	devel/cmake \
		x11/kde4
MODKDE4_USE =   libs

NO_TEST =	Yes

LIB_DEPENDS +=	graphics/ffmpeg \
		audio/speex \
		audio/taglib \
		devel/qjson \
		audio/libcddb \
		devel/libmtp \
		audio/libmusicbrainz5 \
		audio/mpg123 \

RUN_DEPENDS = devel/desktop-file-utils \
	      x11/kde4/oxygen-icons \
	      x11/gtk+2,-guic

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DENABLE_HTTP_STREAM_PLAYBACK=ON \
			-DENABLE_KDE=ON

.include <bsd.port.mk>
