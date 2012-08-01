# $OpenBSD$

COMMENT =		CD/DVD creator

DISTNAME =		k3b-${TDE_V}

SHARED_LIBS +=  k3b                       1.0 # 3.0
SHARED_LIBS +=  k3bdevice                 1.0 # 5.0

CATEGORIES =		x11 x11/tde multimedia

WANTLIB += DCOP FLAC FLAC++ ICE SM X11 Xext artsc avcodec avformat
WANTLIB += c dvdread jpeg kdecore kdefx kdeui kio kparts ktexteditor
WANTLIB += m mad mp3lame mpcdec ogg png pthread samplerate sndfile
WANTLIB += stdc++ tag tqt vorbis vorbisenc vorbisfile xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		converters/libiconv \
			x11/tde
RUN_DEPENDS =		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			audio/normalize \
			audio/sox \
			multimedia/transcode \
			x11/gtk+2,-guic \
			devel/desktop-file-utils
LIB_DEPENDS =		x11/tde/libs \
			x11/tde/arts \
			audio/lame \
			audio/flac \
			audio/libsndfile \
			audio/libvorbis \
			graphics/ffmpeg \
			audio/taglib \
			audio/libsamplerate \
			audio/musepack

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -logg"

WRKDIST =		${WRKDIR}/applications/k3b

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
