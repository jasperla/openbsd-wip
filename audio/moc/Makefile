# $OpenBSD$

COMMENT = console audio player

VERSION = 2.5.0
DISTNAME = moc-${VERSION}
CATEGORIES = audio

HOMEPAGE = http://moc.daper.net/

MAINTAINER = ports@openbsd.org

MASTER_SITES = http://ftp.daper.net/pub/soft/moc/stable/
EXTRACT_SUFX = .tar.bz2

# License: GPLv2 (or later version)
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_FTP = Yes


WANTLIB =  c crypto m ncursesw pthread ssl sndio z
WANTLIB += curl ltdl idn samplerate magic
WANTLIB += intl # gettext
WANTLIB += db>=4 # berkely db, for tag caching.
# aac decoder
WANTLIB += id3tag
WANTLIB += faad
# ffmpeg decoder
WANTLIB += avcodec
WANTLIB += avformat
WANTLIB += avutil
# vorbis decoder
WANTLIB += ogg vorbis vorbisfile vorbisenc
# flac decoder
WANTLIB += FLAC
# mp3 decoder
WANTLIB += mad
# musepack decoder
WANTLIB += mpcdec
WANTLIB += tag_c
# sndfile decoder
WANTLIB += sndfile
# speex decoder
WANTLIB += speex
# wavpack decoder
WANTLIB += wavpack

MODULES = converters/libiconv

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
			devel/gettext \
			devel/libidn \
			devel/libtool,-ltdl \
			graphics/ffmpeg \
			net/curl

SEPARATE_BUILD = Yes
USE_LIBTOOL = gnu

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
