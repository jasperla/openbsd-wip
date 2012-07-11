# $OpenBSD$

COMMENT =		Trinity Desktop Environment, aRTs

DISTNAME =		arts-${TDE_V}

SHARED_LIBS +=  artsc                     2.0 # 0.0
SHARED_LIBS +=  artscbackend              2.0 # 0.0
SHARED_LIBS +=  artsdsp                   2.0 # 0.0
SHARED_LIBS +=  artsdsp_st                2.0 # 0.0
SHARED_LIBS +=  artsflow                  3.0 # 1.0
SHARED_LIBS +=  artsflow_idl              3.0 # 1.0
SHARED_LIBS +=  artsgslplayobject         2.0 # 0.0
SHARED_LIBS +=  artswavplayobject         2.0 # 0.0
SHARED_LIBS +=  gmcop                     3.0 # 1.0
SHARED_LIBS +=  kmedia2                   3.0 # 1.0
SHARED_LIBS +=  kmedia2_idl               3.0 # 1.0
SHARED_LIBS +=  mcop                      3.0 # 1.0
SHARED_LIBS +=  mcop_mt                   3.0 # 1.0
SHARED_LIBS +=  qtmcop                    3.0 # 1.0
SHARED_LIBS +=  soundserver_idl           3.0 # 1.0

WANTLIB += audiofile c glib-2.0 gthread-2.0 m mad ogg pthread
WANTLIB += qt-mt sndio stdc++ tqt vorbis vorbisfile

MASTER_SITES =		${MASTER_SITE_TDE:=dependencies/}

MODULES =		devel/gettext
LIB_DEPENDS =		devel/glib2 \
			x11/tde/tqt \
			devel/libaudiofile \
			audio/libvorbis \
			audio/libmad

CONFIGURE_ARGS +=	-DWITH_ALSA=OFF

WRKDIST =		${WRKDIR}/dependencies/arts

post-patch:
	cp ${FILESDIR}/audioiosndio.cc ${WRKSRC}/flow

.include <bsd.port.mk>
