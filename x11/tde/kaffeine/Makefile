# $OpenBSD$

COMMENT =		video player for TDE

DISTNAME =		kaffeine-${TDE_V}

SHARED_LIBS +=  kaffeineaudioencoder      1.0 # 0.1

CATEGORIES =		x11 x11/tde multimedia

WANTLIB += DCOP ICE SM X11 Xext Xi Xinerama Xtst c cdio cdio_cdda
WANTLIB += cdio_paranoia expat fontconfig freetype
WANTLIB += kdecore kdefx kdeprint kdeui khtml kio kparts ktexteditor
WANTLIB += m ogg png pthread stdc++ tqt vorbis vorbisenc xcb xine
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			multimedia/xine-lib

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-libsuffix \
			--without-arts \
			--without-gstreamer \
			--without-lame

WRKDIST =		${WRKDIR}/applications/kaffeine

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
