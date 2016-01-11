# $OpenBSD: Makefile,v 1.21 2016/01/08 18:47:01 feinerer Exp $

# archs with atomic ops
ONLY_FOR_ARCHS =	alpha amd64 i386 mips64 mips64el powerpc sparc64

COMMENT =		movie player based on MPlayer/mplayer2

DISTNAME =		mpv-0.14.1
GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_COMMIT =		459b40cc4bfa57befde753d3bf761d98cac3fd42

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

# zsh.pl needs to find the binary that was just built
PORTPATH =		\
	${WRKDIR}/bin:${WRKBUILD}:/usr/bin:/bin:/usr/sbin:/sbin:${DEPBASE}/bin:${LOCALBASE}/bin:${X11BASE}/bin

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CFLAGS +=		-I${WRKSRC} -I${LOCALBASE}/include

CONFIGURE_STYLE =	waf
MODWAF_SYSTEM_WAF =	Yes
CONFIGURE_ARGS +=	--confdir=${SYSCONFDIR}/mpv \
			--mandir=${LOCALBASE}/man \
			--docdir=${LOCALBASE}/share/examples/mpv \
			--zshdir=${LOCALBASE}/share/zsh/vendor-completions \
			--enable-sndio \
			--enable-sdl2 \
			--enable-zsh-comp \
			--disable-alsa \
			--disable-caca \
			--disable-enca \
			--disable-jack \
			--disable-libarchive \
			--disable-libguess \
			--disable-oss-audio \
			--disable-openal \
			--disable-pulse \
			--disable-rsound \
			--disable-uchardet \
			--disable-optimize \
			--disable-gpl3
#			--enable-test \

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" CFLAGS="${CFLAGS}"

MAKE_FLAGS =		V=1
FAKE_FLAGS =		CONFDIR=${DESTDIR}${PREFIX}/share/examples/mpv

USE_GROFF =		Yes
NO_TEST =		Yes

post-install:
	@${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
	                ${WRKDIST}/TOOLS/umpv \
	                	${PREFIX}/share/examples/mpv
	@sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
