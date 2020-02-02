# $OpenBSD$

COMMENT =	FFmpeg-based library for easy frame-accurate access
GH_ACCOUNT =	FFMS
GH_PROJECT =	ffms2
GH_TAGNAME =	2.23

SHARED_LIBS =	ffms2		0.0

CATEGORIES =	multimedia
#MAINTAINER =		???

# MIT, but beware of FFmpeg licensing issues
PERMIT_PACKAGE =	Yes

WANTLIB =  ${COMPILER_LIBCXX} X11 Xext Xfixes aom avcodec avformat                                                                                                          
WANTLIB += avresample avutil bz2 c crypto dav1d drm gsm iconv                         
WANTLIB += lzma m mp3lame ogg opus speex ssl swresample swscale                       
WANTLIB += theoradec theoraenc va va-drm va-x11 vorbis vorbisenc
WANTLIB += vpx x264 x265 xcb xml2 xvidcore z                  

LIB_DEPENDS =		graphics/ffmpeg \
			multimedia/x265

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

# if debug packages are a good idea, extra configure args may be necessary
# and DEBUG_PACKAGES will commonly be set to ${BUILD_PACKAGES}
# DEBUG_CONFIGURE_ARGS =	???
# DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
