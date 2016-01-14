# $OpenBSD$

# archs with atomic ops
ONLY_FOR_ARCHS =	alpha amd64 i386 mips64 mips64el powerpc sparc64

COMMENT =		movie player based on MPlayer/mplayer2

DISTNAME =		mpv-0.14.2
GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_COMMIT =		dd973da108165ebb95e856dbc82326cb35fb45a5

CATEGORIES =		multimedia x11

HOMEPAGE =		http://mpv.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += EGL GL SDL2 X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xv Xxf86vm ass avcodec
WANTLIB += avdevice avfilter avformat avresample avutil bluray
WANTLIB += c cdio cdio_cdda cdio_paranoia drm dvdnav dvdread expat
WANTLIB += fontconfig freetype fribidi jpeg lcms2 m opus postproc
WANTLIB += pthread pthread-stubs smbclient sndio speex swresample
WANTLIB += swscale v4l2 v4lconvert vpx x264 x265 xcb xcb-dri2
WANTLIB += xcb-glx z ${MODLUA_WANTLIB}

MODULES =		converters/libiconv \
			devel/waf \
			lang/lua \
			lang/python

BUILD_DEPENDS =		audio/ladspa \
			graphics/libmng \
			textproc/py-docutils

LIB_DEPENDS =		audio/libcdio \
			devel/libdvdread \
			devel/sdl2 \
			graphics/ffmpeg>=20151112 \
			graphics/jpeg \
			graphics/lcms2 \
			multimedia/libass \
			multimedia/libbluray>=0.8.0 \
			multimedia/libdvdnav \
			multimedia/libv4l \
			net/samba

MODPY_RUNDEP ?=		No
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_STYLE =	waf
MODWAF_SYSTEM_WAF =	Yes
CONFIGURE_ARGS =	--confloaddir=${SYSCONFDIR}/mpv \
			--confdir=${LOCALBASE}/share/examples/mpv \
			--mandir=${LOCALBASE}/man \
			--docdir=${LOCALBASE}/share/examples/mpv \
			--zshdir=${LOCALBASE}/share/zsh/vendor-completions \
			--enable-sndio \
			--enable-sdl2 \
			--enable-zsh-comp \
			--disable-alsa \
			--disable-caca \
			--disable-dxva2-hwaccel \
			--disable-enca \
			--disable-gpl3 \
			--disable-jack \
			--disable-libarchive \
			--disable-libguess \
			--disable-rubberband \
			--disable-oss-audio \
			--disable-openal \
			--disable-optimize \
			--disable-pulse \
			--disable-rsound \
			--disable-uchardet \
			--disable-vaapi \
			--disable-vaapi-glx \
			--disable-vaapi-hwaccel \
			--disable-vaapi-x-egl \
			--disable-vaapi-x11 \
			--disable-vaapi-wayland \
			--disable-vapoursynth \
			--disable-vapoursynth-lazy \
			--disable-vdpau \
			--disable-vdpau-hwaccel \
			--disable-videotoolbox-hwaccel \
			--disable-videotoolbox-gl \
			--disable-wayland
CONFIGURE_ARGS +=	-c yes

MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV +=		CPPFLAGS="-I${LOCALBASE}/include"

USE_GROFF =		Yes
NO_TEST =		Yes

post-install:
	@${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
	                 ${WRKDIST}/TOOLS/umpv \
	                			${PREFIX}/share/examples/mpv
	@${MODPY_BIN_ADJ} ${PREFIX}/share/examples/mpv/umpv
	@sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,g' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
