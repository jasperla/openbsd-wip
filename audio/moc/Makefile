# $OpenBSD$

COMMENT = console audio player

DISTNAME = moc-2.5.0
CATEGORIES = audio

HOMEPAGE = http://moc.daper.net/

MASTER_SITES = http://ftp.daper.net/pub/soft/moc/stable/
EXTRACT_SUFX = .tar.bz2

# License: GPLv2 (or later version)
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB = db>=4
WANTLIB += FLAC avcodec avformat avutil bz2 c crypto curl faad
WANTLIB += gsm id3tag idn ltdl m mad mp3lame mpcdec ncursesw ogg
WANTLIB += opus orc-0.4 pthread samplerate schroedinger-1.0 sndfile
WANTLIB += sndio speex ssl stdc++ swresample tag tag_c theoradec
WANTLIB += theoraenc vorbis vorbisenc vorbisfile vpx wavpack x264
WANTLIB += x265 xvidcore z

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
