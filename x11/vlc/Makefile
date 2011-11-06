# $OpenBSD: Makefile,v 1.136 2011/10/21 18:20:14 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	VideoLAN client; multimedia player

V=		1.1.10
DISTNAME=	vlc-${V}
PKGNAME-main=	${DISTNAME}
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	vlc		1.0 \
		vlccore		1.0

HOMEPAGE=	http://www.videolan.org/vlc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/qt4

LIB_DEPENDS-main=${LIB_DEPENDS} \
		audio/libcddb \
		audio/libvorbis \
		audio/speex \
		audio/taglib \
		converters/enca \
		devel/atk \
		devel/fribidi \
		devel/libffi \
		devel/libdvdread \
		devel/libnotify>=0.7.2 \
		devel/sdl \
		devel/sdl-image \
		graphics/gdk-pixbuf2 \
		graphics/ffmpeg>=20110408 \
		graphics/libdvbpsi \
		graphics/png \
		multimedia/libass \
		multimedia/libdvdnav \
		multimedia/libmatroska \
		multimedia/schroedinger>=1.0.10 \
		multimedia/x264 \
		net/libproxy \
		textproc/libebml \
		textproc/libxml \
		x11/dbus \
		x11/gtk+2 \
		x11/qt4

RUN_DEPENDS=	devel/desktop-file-utils

WANTLIB-main=  GL ICE lib/qt4/QtGui SM SDL SDL_image X11 X11-xcb \
	       Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
	       Xinerama Xrandr Xrender Xxf86vm ass atk-1.0 avcodec \
	       avformat avutil bz2 c cairo cddb dbus-1 drm dvbpsi \
	       dvdnav dvdread ebml expat fontconfig freetype \
	       fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
	       gmodule-2.0 gobject-2.0 gsm gthread-2.0 gtk-x11-2.0 \
	       jpeg m matroska modman mp3lame notify orc-0.4 ogg \
	       pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
	       png postproc proxy pthread-stubs pthread stdc++ \
	       schroedinger-1.0 sndio speex swscale tag tiff theoradec \
	       theoraenc usbhid vorbis vorbisenc vpx x264 xcb-keysyms \
	       xcb-randr xcb-render xcb-shm xcb-xv xcb xml2 z \
	       ${WANTLIB} ffi enca


CPPFLAGS=	-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autotools
CONFIGURE_ARGS+=--disable-a52 \
		--disable-alsa \
		--disable-altivec \
		--disable-bonjour \
		--disable-caca \
		--disable-dc1394 \
		--disable-dca \
		--disable-dirac \
		--disable-dv \
		--disable-dvb \
		--disable-flac \
		--disable-fluidsynth \
		--disable-gme \
		--disable-gnutls \
		--disable-goom \
		--disable-hd1000v \
		--disable-kate \
		--disable-libgcrypt \
		--disable-libmpeg2 \
		--disable-libtar \
		--disable-libv4l \
		--disable-libv4l2 \
		--disable-libva \
		--disable-live555 \
		--disable-lua \
		--disable-mad \
		--disable-mod \
		--disable-mpc \
		--disable-mtp \
		--disable-neon \
		--disable-oss \
		--disable-osso_screensaver \
		--disable-portaudio \
		--disable-projectm \
		--disable-pulse \
		--disable-remoteosd \
		--disable-shout \
		--disable-skins2 \
		--disable-smb \
		--disable-sqlite \
		--disable-svg \
		--disable-theora \
		--disable-tiger \
		--disable-twolame \
		--disable-udev \
		--disable-upnp \
		--disable-zvbi \
		--enable-real \
		--enable-realrtsp \
		--without-contrib \
		--without-tuning

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/qt4/pkgconfig" \
		LOCALBASE=${LOCALBASE}

MULTI_PACKAGES=-main -web -jack

FLAVORS=	debug
PSEUDO_FLAVORS=	no_web no_jack
FLAVOR?=

.include <bsd.port.arch.mk>

COMMENT-web=	Mozilla plugin for embedded media playback
PKGNAME-web=	vlc-web-${V}
LIB_DEPENDS-web=${LIB_DEPENDS} \
		${BUILD_PKGPATH} \
		devel/nspr
RUN_DEPENDS-web=${BUILD_PKGPATH}
WANTLIB-web=	dbus-1 m stdc++ vlc vlccore ${MODGETTEXT_WANTLIB}

.if ${BUILD_PACKAGES:M-web}
BUILD_DEPENDS+=	devel/xulrunner/1.9,-devel>=1.9
CONFIGURE_ARGS+=--enable-mozilla \
		--with-mozilla-sdk-path=${LOCALBASE}/xulrunner1.9
CPPFLAGS+=	-I${LOCALBASE}/include/nspr -I${LOCALBASE}/xulrunner1.9/include -DOPENBSD
PORTPATH=	${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/xulrunner1.9
.endif

COMMENT-jack=	jackd audio output module for VLC
PKGNAME-jack=vlc-jack-${V}
LIB_DEPENDS-jack=${LIB_DEPENDS} \
		 ${BUILD_PKGPATH} \
		 audio/jack
RUN_DEPENDS-jack=${BUILD_PKGPATH}
WANTLIB-jack=	dbus-1 jack m vlccore ${MODGETTEXT_WANTLIB}

.if ${BUILD_PACKAGES:M-jack}
CONFIGURE_ARGS+=--enable-jack
.else
CONFIGURE_ARGS+=--disable-jack
.endif

.for _a in amd64 i386
.   if ${MACHINE_ARCH} == ${_a}
PKG_ARGS+=-D${_a}=1
.   else
PKG_ARGS+=-D${_a}=0
.   endif
.endfor

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
.endif

SEPARATE_BUILD=		simple

pre-configure:
	@perl -pi -e 's/grep -v /grep -av /' ${WRKSRC}/src/Makefile.in

post-install:
.if ${BUILD_PACKAGES:M-web}
	rm ${PREFIX}/lib/mozilla/plugins/libvlcplugin.a
.endif
	@find ${PREFIX}/lib/vlc -name '*.a' -print | xargs -rt rm
	@find ${PREFIX}/lib -name '*.la' -print | xargs -rt rm

.include <bsd.port.mk>
