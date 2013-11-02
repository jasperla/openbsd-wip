# $OpenBSD$
SHARED_ONLY =		Yes
COMMENT =		console background audio player
DISTNAME =		moc-2.4.4
CATEGORIES =		audio
HOMEPAGE =		http://moc.daper.net/

#MAINTAINER =		[poor pinokkio]

WANTLIB =  FLAC c crypto curl id3tag idn intl ltdl m mad mpcdec
WANTLIB += ncursesw ogg ossaudio pthread samplerate sndfile sndio
WANTLIB += speex ssl tag_c vorbis vorbisenc vorbisfile z

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ftp.daper.net/pub/soft/moc/stable/
EXTRACT_SUFX =		.tar.bz2

MODULES =		converters/libiconv

LIB_DEPENDS =		audio/flac \
			audio/libid3tag \
			audio/libmad \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/speex \
			audio/taglib \
			devel/libidn \
			devel/libtool,-ltdl \
			net/curl

SEPARATE_BUILD =	Yes
USE_LIBTOOL=		gnu

AUTOCONF_VERSION =	2.61
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-rcc \
			--without-ffmpeg \
			--without-jack \
			--without-included-ltdl \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib

CONFIGURE_ENV =		CFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

post-extract:
	cp ${FILESDIR}/moc_sndio.[ch] ${WRKSRC}

.include <bsd.port.mk>
