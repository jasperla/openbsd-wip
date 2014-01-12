# $OpenBSD$

COMMENT = 		Qt4 / KDE4 Music Player Client

VERSION = 		1.2.2
DISTNAME = 		cantata-${VERSION}
PKGNAME-gui = 		cantata-${VERSION}

CATEGORIES = 		audio

MASTER_SITES = 		https://cantata.googlecode.com/files/
EXTRACT_SUFX = 		.tar.bz2

HOMEPAGE = 		http://code.google.com/p/cantata/

MAINTAINER = 		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml X11 avcodec avformat
WANTLIB += avutil c m phonon pthread qjson speexdsp stdc++ tag
WANTLIB += cdda_interface cdda_paranoia cddb mpg123 mtp musicbrainz5
WANTLIB += z

MODULES =	devel/cmake

NO_TEST =	Yes

LIB_DEPENDS =	graphics/ffmpeg \
		audio/speex \
		audio/taglib \
		devel/qjson \
		audio/libcddb \
		devel/libmtp \
		audio/libmusicbrainz5 \
		audio/mpg123 \
		x11/qt4,-main


RUN_DEPENDS = x11/kde4/oxygen-icons

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DENABLE_HTTP_STREAM_PLAYBACK=ON \
			-DENABLE_KDE=OFF

.include <bsd.port.mk>
