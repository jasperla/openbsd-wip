# $OpenBSD$

COMMENT =		telephony streaming engine
VERSION =		2.10.0
DISTNAME =		mediastreamer-${VERSION}
HOMEPAGE =		http://www.linphone.org/
CATEGORIES =		telephony net multimedia

SHARED_LIBS =	mediastreamer_base	0.0 # 3.0
SHARED_LIBS +=	mediastreamer_voip	0.0 # 3.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  FLAC GL GLEW GLU ICE SM X11 X11-xcb Xau Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xmu Xt Xtst Xv Xxf86vm avcodec avutil
WANTLIB += c crypto dbus-1 drm execinfo gdbm glapi gsm
WANTLIB += ixml json-c m mp3lame ogg opus orc-0.4 ortp ossaudio
WANTLIB += pthread pthread-stubs pulse schroedinger-1.0 sndfile
WANTLIB += speex speexdsp stdc++ swscale swresample theora theoradec
WANTLIB += theoraenc threadutil upnp vorbis vorbisenc vpx x264 x265 xcb
WANTLIB += xcb-dri2 xcb-glx xvidcore z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=linphone/mediastreamer/}

MODULES =		devel/gettext textproc/intltool

BUILD_DEPENDS =		devel/doxygen \
			security/libsrtp

RUN_DEPENDS =		devel/desktop-file-utils \
			security/libsrtp

LIB_DEPENDS =		audio/flac \
			audio/gsm \
			audio/libsndfile \
			audio/pulseaudio \
			audio/speex \
			devel/orc \
			graphics/ffmpeg \
			graphics/glew \
			multimedia/libtheora \
			multimedia/libvpx \
			multimedia/x264 \
			net/libupnp \
			net/ortp

# creates files in source directory!
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-alsa \
			--disable-artsc \
			--enable-external-ortp \
			--with-gsm=${LOCALBASE}

# not ported
CONFIGURE_ARGS +=	--disable-spandsp

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"

post-extract:
	install -m 0555 ${FILESDIR}/xxd ${WRKDIR}/bin

pre-configure:
	find ${WRKSRC} -type f \( -name '*.h' -or -name '*.c' \) | \
		xargs perl -pi.malloc -e 's@<malloc\.h>@<stdlib.h>@'

post-install:
	rm -Rf ${PREFIX}/share/doc/mediastreamer2
	mv ${PREFIX}/share/doc/{${DISTNAME},mediastreamer2}

.include <bsd.port.mk>
