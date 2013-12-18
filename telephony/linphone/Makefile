# $OpenBSD$

COMMENT =		VoIP SIP software
VERSION =		3.6.1
DISTNAME =		linphone-${VERSION}
HOMEPAGE =		http://www.linphone.org/
CATEGORIES =		telephony net

SHARED_LIBS =	linphone 		0.0
SHARED_LIBS +=	lpc2xml			0.0 # 0.0
SHARED_LIBS +=	xml2lpc			0.0 # 0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  FLAC GL GLEW GLU ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xtst
WANTLIB += Xv atk-1.0 avcodec avutil c cairo cares crypto dbus-1
WANTLIB += eXosip2 execinfo expat ffi fontconfig freetype gdbm
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gsm gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += ixml json-c m mediastreamer_base mediastreamer_voip
WANTLIB += notify ogg opus orc-0.4 ortp osip2 osipparser2 ossaudio
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs pulse readline sndfile soup-2.4
WANTLIB += speex speexdsp sqlite3 ssl stdc++ swscale termcap theora
WANTLIB += theoradec threadutil upnp vorbis vorbisenc vpx xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=linphone/${VERSION:R}.x/sources/}

MODULES =		devel/gettext

# needs xxd
BUILD_DEPENDS =		editors/vim

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		audio/flac \
			audio/gsm \
			audio/libsndfile \
			audio/pulseaudio \
			audio/speex \
			devel/libnotify \
			devel/libsoup \
			devel/orc \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/glew \
			graphics/png \
			multimedia/libtheora \
			multimedia/libvpx \
			net/libupnp \
			net/ortp \
			telephony/libexosip2>=3.6,<4 \
			telephony/libosip2 \
			telephony/mediastreamer2 \
			x11/gtk+2

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-alsa \
			--disable-artsc \
			--disable-zrtp \
			--enable-external-mediastreamer \
			--enable-external-ortp \
			--with-gsm=${LOCALBASE} \
			--with-libiconv=${LOCALBASE} \
			--with-libintl=${LOCALBASE}

# Requires sgmltools, not ported
CONFIGURE_ARGS +=	--disable-manual

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"

AUTOCONF_VERSION =	2.68

pre-configure:
	find ${WRKSRC}/mediastreamer2 -type f \( -name '*.h' -or -name '*.c' \) | \
		xargs perl -pi.malloc -e 's@<malloc\.h>@<stdlib.h>@'
	cd ${WRKSRC}; touch -r aclocal.m4 configure.ac

post-install:
	rm -Rf ${PREFIX}/share/doc/linphone
	mv ${PREFIX}/share/doc/{${DISTNAME},linphone}

.include <bsd.port.mk>
