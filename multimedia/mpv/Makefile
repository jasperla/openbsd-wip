# $OpenBSD: Makefile,v 1.34 2016/10/20 17:28:52 czarkoff Exp $

# archs with atomic ops
ONLY_FOR_ARCHS =	alpha amd64 i386 mips64 mips64el powerpc sparc64
BROKEN-powerpc =	atomics detection fails

COMMENT =		movie player based on MPlayer/mplayer2

GH_ACCOUNT =		mpv-player
GH_PROJECT =		mpv
GH_TAGNAME =		v0.22.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://mpv.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

WAF =			${WRKSRC}/waf-1.8.19
MASTER_SITES0 =		http://waf.io/
DISTFILES =		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX} ${WAF:T}:0
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# GPLv2+
PERMIT_PACKAGE_CDROM =	patents
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += EGL GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xinerama
WANTLIB += Xrandr Xrender Xss Xv Xxf86vm ass avcodec avfilter
WANTLIB += avformat avresample avutil c drm expat fontconfig freetype
WANTLIB += fribidi gbm m opus postproc pthread pthread-stubs sndio
WANTLIB += speex swresample swscale vpx x264 x265 xcb xcb-dri2
WANTLIB += xcb-glx z

MODULES =		lang/python

BUILD_DEPENDS =		audio/ladspa \
			textproc/py-docutils

LIB_DEPENDS =		graphics/ffmpeg>=20151112 \
			multimedia/libass

MODPY_RUNDEP =		No
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

FLAVORS ?=		lite
FLAVOR ?=

.if ${FLAVOR:L:Mlite}
TOGGLE =		disable
.else
TOGGLE =		enable

WANTLIB += SDL2 ass avdevice bluray cdio cdio_cdda cdio_paranoia
WANTLIB += dvdnav dvdread expat fontconfig freetype fribidi iconv
WANTLIB += jpeg lcms2 smbclient v4l2 v4lconvert ${MODLUA_WANTLIB}

MODULES +=		lang/lua

LIB_DEPENDS +=		audio/libcdio \
			converters/libiconv \
			devel/libdvdread \
			devel/sdl2 \
			graphics/jpeg \
			graphics/lcms2 \
			multimedia/libbluray>=0.8.0 \
			multimedia/libdvdnav \
			multimedia/libv4l \
			net/samba
.endif


CONFIGURE_ARGS =	--confloaddir=${SYSCONFDIR}/mpv \
			--confdir=${LOCALBASE}/share/examples/mpv \
			--mandir=${LOCALBASE}/man \
			--docdir=${LOCALBASE}/share/examples/mpv \
			--zshdir=${LOCALBASE}/share/zsh/vendor-completions \
			--enable-sndio \
			--enable-zsh-comp \
			--disable-alsa \
			--disable-caca \
			--disable-enca \
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
			--disable-wayland \
			--${TOGGLE}-audio-input \
			--${TOGGLE}-cdda \
			--${TOGGLE}-dvdread \
			--${TOGGLE}-dvdnav \
			--${TOGGLE}-encoding \
			--${TOGGLE}-iconv \
			--${TOGGLE}-jpeg \
			--${TOGGLE}-lcms2 \
			--${TOGGLE}-libavdevice \
			--${TOGGLE}-libbluray \
			--${TOGGLE}-libsmbclient \
			--${TOGGLE}-libv4l2 \
			--${TOGGLE}-lua \
			--${TOGGLE}-sdl2 \
			--${TOGGLE}-tv

MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_ENV +=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
MAKE_FLAGS =		-o "${WRKBUILD}" -t "${WRKSRC}" --destdir="${DESTDIR}"

USE_GROFF =		Yes
NO_TEST =		Yes

WRKBUILD =		${WRKSRC}/${MACHINE_ARCH}

.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i586
.endif

post-patch:
	cp ${DISTDIR}/${WAF:T} ${WAF}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${WAF} \
				${MAKE_FLAGS} configure ${CONFIGURE_ARGS}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${WAF} \
				${MAKE_FLAGS} build -v

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ${WAF} \
				${MAKE_FLAGS} install
	${INSTALL_DATA} ${WRKDIST}/TOOLS/mpv_identify.sh \
	                ${WRKDIST}/TOOLS/umpv \
	                	${PREFIX}/share/examples/mpv
	${MODPY_BIN_ADJ} ${PREFIX}/share/examples/mpv/umpv
	sed -Ei 's,(/dev/dvd|/dev/cdrom),/dev/rcd0c,g' ${PREFIX}/man/man1/mpv.1

.include <bsd.port.mk>
