# $OpenBSD: Makefile,v 1.21 2020/08/18 19:15:54 edd Exp $

COMMENT =	powerful display server and multimedia framework

SHARED_LIBS +=  arcan_a12                 0.0 # 0.1
SHARED_LIBS +=  arcan_shmif               0.0 # 0.13
SHARED_LIBS +=  arcan_shmif_ext           0.0 # 0.13
SHARED_LIBS +=  arcan_shmif_intext        0.0 # 0.13
SHARED_LIBS +=  arcan_shmif_server        0.0 # 0.13
SHARED_LIBS +=  arcan_tui                 0.0 # 0.13

GH_ACCOUNT =	letoram
GH_PROJECT =	arcan
#GH_TAGNAME =	0.6.0-pre3

GH_COMMIT =	820ec644a21e482a2580c83a6b6fb50c1e16f03f
DISTNAME =	arcan-0.6.0-pre4

CATEGORIES =	graphics devel
HOMEPAGE =	https://arcan-fe.com

# TODO: bunch
PERMIT_PACKAGE =	Yes

WRKSRC =		${WRKDIST}/src

WANTLIB += ${COMPILER_LIBCXX} EGL GL SDL2 avcodec avdevice avfilter
WANTLIB += avformat avutil bz2 c drm freetype gbm iconv lept lua5.1
WANTLIB += lzma m openal sqlite3 swresample swscale tesseract
WANTLIB += util vlc vncclient vncserver xkbcommon z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua

LIB_DEPENDS =		archivers/bzip2 \
			audio/openal \
			databases/sqlite3 \
			graphics/ffmpeg \
			graphics/tesseract/tesseract \
			net/libvncserver \
			x11/vlc \
			x11/xkbcommon

CONFIGURE_ARGS =	-DVIDEO_PLATFORM=egl-dri \
			-DHYBRID_SDL=ON \
			-DHYBRID_HEADLESS=ON \
			-DDISABLE_JIT=ON \
			-DLIBVNC_INCLUDE_DIRS=${LOCALBASE}/include

.include <bsd.port.mk>
