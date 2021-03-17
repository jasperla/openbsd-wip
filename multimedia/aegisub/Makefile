# $OpenBSD$

COMMENT =	subtitles editor
DISTNAME =	aegisub-3.2.2

CATEGORIES =	multimedia x11
HOMEPAGE =	http://www.aegisub.org/

# MIT, BSD, MPL
PERMIT_PACKAGE =	Yes

WANTLIB =  ${COMPILER_LIBCXX} GL ass boost_chrono-mt boost_filesystem-mt
WANTLIB += boost_locale-mt boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += c ffms2 fftw3 fontconfig freetype hunspell-1.6 iconv
WANTLIB += icudata icui18n icuuc m portaudio wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_stc-3.0
WANTLIB += wx_gtk3u_xrc-3.0 z

MASTER_SITES =		http://ftp.aegisub.org/pub/archives/releases/source/
EXTRACT_SUFX =		.tar.xz

BUILD_DEPENDS =		net/curl

RUN_DEPENDS =		devel/desktop-file-utils \
			net/curl \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/portaudio-svn \
			devel/boost \
			math/fftw3 \
			multimedia/ffms2 \
			textproc/hunspell \
			x11/wxWidgets

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

CONFIGURE_ARGS =	--without-alsa \
			--without-libpulse \
			--without-openal \
			--without-oss

.for _bl in chrono filesystem locale regex system thread
CONFIGURE_ARGS +=	--with-boost-${_bl}=boost_${_bl}-mt
.endfor

# --x-includes= & --x-libraries= do not help:
# the configure script doesn't use them for OpenGL checks

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include -DU_USING_ICU_NAMESPACE=1" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib" \
			ICONV_CFLAGS="-I${LOCALBASE}/include" ICONV_LIBS="-liconv"

# if debug packages are a good idea, extra configure args may be necessary
# and DEBUG_PACKAGES will commonly be set to ${BUILD_PACKAGES}
# DEBUG_CONFIGURE_ARGS =	???
# DEBUG_PACKAGES = ${BUILD_PACKAGES}

# Need unported stuff
NO_TEST =		Yes

.include <bsd.port.mk>
