COMMENT =	powerful display server and multimedia framework

SHARED_LIBS +=  arcan_a12                 0.0 # 0.1
SHARED_LIBS +=  arcan_shmif               0.0 # 0.13
SHARED_LIBS +=  arcan_shmif_ext           0.0 # 0.13
SHARED_LIBS +=  arcan_shmif_intext        0.0 # 0.13
SHARED_LIBS +=  arcan_shmif_server        0.0 # 0.13
SHARED_LIBS +=  arcan_tui                 0.0 # 0.13

GH_ACCOUNT =	letoram
GH_PROJECT =	arcan
GH_TAGNAME =	0.6.2

CATEGORIES =	graphics devel
HOMEPAGE =	https://arcan-fe.com

# TODO: bunch
PERMIT_PACKAGE =	Yes

WRKSRC =		${WRKDIST}/src

WANTLIB += ${COMPILER_LIBCXX} EGL GL SDL2 archive avcodec avdevice
WANTLIB += avfilter avformat avutil bz2 c curl drm espeak freetype
WANTLIB += gbm iconv lua5.1 lzma m openal sqlite3 swresample swscale
WANTLIB += tesseract util vlc vncclient vncserver xkbcommon z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua

LIB_DEPENDS =		archivers/bzip2 \
			audio/espeak \
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
			-DDISABLE_WAYLAND=ON \
			-DLIBVNC_INCLUDE_DIRS=${LOCALBASE}/include

.include <bsd.port.mk>
