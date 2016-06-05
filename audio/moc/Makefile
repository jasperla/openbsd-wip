# $OpenBSD$

COMMENT =	console audio player
DISTNAME =	moc-2.5.1
CATEGORIES =	audio
HOMEPAGE =	http://moc.daper.net/
MASTER_SITES =	http://ftp.daper.net/pub/soft/moc/stable/
EXTRACT_SUFX =	.tar.bz2

# GPLv3+
PERMIT_PACKAGE_CDROM = Yes

# uses pledge()
WANTLIB += FLAC avcodec avformat avutil bz2 c crypto curl db estdc++
WANTLIB += faad gsm id3tag idn ltdl m mad mp3lame mpcdec ncursesw
WANTLIB += nghttp2 ogg opus pthread samplerate sndfile sndio speex
WANTLIB += ssl stdc++ swresample tag tag_c vorbis vorbisenc vorbisfile
WANTLIB += vpx wavpack x264 x265 xvidcore z

MODULES =	devel/gettext

LIB_DEPENDS =	audio/faad \
		audio/flac \
		audio/libid3tag \
		audio/libmad \
		audio/libsamplerate \
		audio/libsndfile \
		audio/libvorbis \
		audio/musepack \
		audio/wavpack \
		audio/speex \
		audio/taglib \
		databases/db/v4 \
		devel/libtool,-ltdl \
		graphics/ffmpeg \
		net/curl

SEPARATE_BUILD = Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += ${CONFIGURE_SHARED} \
		--with-sndio \
		--without-jack \
		--without-oss \
		--without-alsa \
		--without-rcc \
		--without-included-ltdl \
		--without-timidity \
		--with-magic \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib
CONFIGURE_ENV = CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-install:
	${SUBST_CMD} ${WRKSRC}/mocp.1

post-install:
	rm ${PREFIX}/lib/moc/decoder_plugins/*.{,l}a
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/moc
.for f in config.example keymap.example
	mv ${PREFIX}/share/doc/moc/$f ${PREFIX}/share/examples/moc
.endfor

.include <bsd.port.mk>
