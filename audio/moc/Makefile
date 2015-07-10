# $OpenBSD$

COMMENT = console audio player

DISTNAME = moc-2.6-alpha1
CATEGORIES = audio

HOMEPAGE = http://moc.daper.net/

MASTER_SITES = http://ftp.daper.net/pub/soft/moc/unstable/
EXTRACT_SUFX = .tar.xz

# License: GPLv3+
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB = db>=4
WANTLIB += FLAC avcodec avformat avutil bz2 c crypto curl faad
WANTLIB += gsm id3tag idn ltdl m mad magic mp3lame mpcdec ncursesw
WANTLIB += ogg opus pthread samplerate sndfile sndio speex ssl
WANTLIB += stdc++ swresample tag tag_c vorbis vorbisenc vorbisfile
WANTLIB += vpx wavpack x264 x265 xvidcore z

MODULES = devel/gettext

LIB_DEPENDS = \
			audio/faad \
			audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/speex \
			audio/taglib \
			audio/wavpack \
			databases/db/v4 \
			devel/libidn \
			devel/libmagic \
			devel/libtool,-ltdl \
			graphics/ffmpeg \
			net/curl

SEPARATE_BUILD = Yes

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE = gnu autoconf
CONFIGURE_ARGS += ${CONFIGURE_SHARED} \
			--with-sndio \
			--without-jack \
			--without-oss \
			--without-alsa \
			--without-rcc \
			--without-included-ltdl \
			--without-timidity \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib
CONFIGURE_ENV = \
			CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
