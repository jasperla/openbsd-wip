# $OpenBSD$

COMMENT =		Trinity Desktop Environment, multimedia applications

DISTNAME =		kdemultimedia-${TDE_V}

SHARED_LIBS +=  arts_akode                1.0 # 0.0
SHARED_LIBS +=  arts_audiofile            1.0 # 0.0
SHARED_LIBS +=  arts_mpeglib-0.3.0        2.0 # 0.3
SHARED_LIBS +=  arts_mpeglib              2.0 # 0.3
SHARED_LIBS +=  arts_splay                2.0 # 0.0
SHARED_LIBS +=  arts_xine                 1.0 # 0.0
SHARED_LIBS +=  artsbuilder               2.0 # 0.0
SHARED_LIBS +=  artsgui                   2.0 # 0.0
SHARED_LIBS +=  artsgui_idl               2.0 # 0.0
SHARED_LIBS +=  artsgui_kde               2.0 # 0.0
SHARED_LIBS +=  artsmidi                  2.0 # 0.0
SHARED_LIBS +=  artsmidi_idl              2.0 # 0.0
SHARED_LIBS +=  audiocdplugins            3.0 # 1.0
SHARED_LIBS +=  kcddb                     3.0 # 1.0
SHARED_LIBS +=  kmidlib                   2.0 # 0.0
SHARED_LIBS +=  noatun                    0.0 # 3.0
SHARED_LIBS +=  noatuncontrols            0.0 # 3.0
SHARED_LIBS +=  noatuntags                0.0 # 3.0

WANTLIB += DCOP FLAC ICE SM X11 Xext Xv Xxf86dga Xxf86vm akode
WANTLIB += artsc artsflow artsflow_idl artskde audiofile c cdda_interface
WANTLIB += cdda_paranoia expat ffi fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstreamer-0.10 gthread-2.0
WANTLIB += kdecore kdefakes kdefx kdeui khtml kio kmedia2_idl
WANTLIB += kmediaplayer kmid kparts ktexteditor kutils ltdl m
WANTLIB += mad mcop ogg ossaudio pcre png pthread qtmcop sndio
WANTLIB += soundserver_idl stdc++ tag theora tqt vorbis vorbisenc
WANTLIB += vorbisfile xcb xine xml2 z

MODULES =		devel/gettext \
			x11/tde
RUN_DEPENDS =		graphics/xanim \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			x11/tde/arts \
			multimedia/xine-lib \
			audio/libogg \
			audio/libvorbis \
			audio/taglib \
			audio/cdparanoia \
			multimedia/gstreamer-0.10/core \
			multimedia/libtheora \
			devel/libtool,-ltdl \
			audio/akode

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/apps/kde-conf-sample

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LIBS="-logg -lsndio" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS =	--without-lame \
			--with-arts

WRKDIST =		${WRKDIR}/kdemultimedia

post-extract:
	cp ${FILESDIR}/audioIO_sndio.cpp ${WRKSRC}/mpeglib/lib/util/audio

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
