# $OpenBSD: Makefile $

COMMENT =		UPnP Media Server

GH_ACCOUNT =		gerbera
GH_PROJECT =		gerbera
GH_TAGNAME =		v1.3.1

CATEGORIES =		multimedia net

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} avformat avutil c curl duktape exif
WANTLIB +=		exiv2 expat ffmpegthumbnailer iconv ixml m magic sqlite3
WANTLIB +=		tag upnp z

# C++1z, upstream is actively working towards C++17
COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

LIB_DEPENDS =		audio/taglib>=1.11.1 \
			converters/libiconv \
			databases/sqlite3 \
			devel/libmagic \
			graphics/exiv2 \
			graphics/ffmpeg \
			graphics/ffmpegthumbnailer \
			graphics/libexif \
			lang/duktape>=2.1.0 \
			net/curl \
			net/libupnp>=1.8.3 \
			devel/libinotify

CONFIGURE_ARGS =	-DINOTIFY_INCLUDE_DIR=${LOCALBASE}/include/inotify \
			-DINOTIFY_LIBRARY=${LOCALBASE}/lib/inotify \
			-DWITH_AVCODEC=1 \
			-DWITH_EXIV2=1 \
			-DWITH_FFMPEGTHUMBNAILER=1 \
			-DWITH_LASTFM=0 \
			-DWITH_SYSTEMD=0 \

# XXX: INOTIFY_LIBRARY must point to the shared object directly
#   WARNING: Target "gerbera" requests linking to directory
#   "/usr/local/lib/inotify".  Targets may link only to libraries.  CMake is
#   dropping the item.
CONFIGURE_ARGS +=	-DWITH_INOTIFY=0

# XXX: auto_ptr is deprecated with C++11 and removed with C++17
#   /usr/local/include/exiv2/value.hpp:66:22: error: no template named
#   'auto_ptr' in namespace 'std'
CXXFLAGS +=		-Dauto_ptr=unique_ptr

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gerbera/
	sphinx-build${MODPY_BIN_SUFFIX} -N ${WRKSRC}/doc/ \
	    ${PREFIX}/share/doc/gerbera/

.include <bsd.port.mk>
