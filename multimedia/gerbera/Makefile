COMMENT =		UPnP media server
CATEGORIES =		multimedia net

DIST_TUPLE =		github	gerbera	gerbera	v2.5.0	.
HOMEPAGE =		https://gerbera.io

# GPLv2
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB =		${COMPILER_LIBCXX} c ebml exif fmt iconv m magic \
			matroska npupnp pugixml spdlog sqlite3 tag z

# -std=c++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		audio/taglib>=1.12 \
			converters/libiconv \
			databases/sqlite3>=3.7.0 \
			devel/fmt>=7.1.3 \
			devel/libmagic \
			devel/spdlog>=1.8.1 \
			graphics/libexif \
			multimedia/libmatroska \
			textproc/pugixml

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS =	-DWITH_CURL=OFF \
			-DWITH_EXIV2=OFF \
			-DWITH_JS=OFF \
			-DWITH_SYSTEMD=OFF \
			-DWITH_DEBUG=OFF

# configure does not find it
#LIB_DEPENDS +=		devel/libinotify
CONFIGURE_ARGS +=	-DWITH_INOTIFY=OFF

# needs net/libupnp>=1.14.6, but we have 1.8.7;
# an update needs requires updating its only consumer net/libupnpp as well
LIB_DEPENDS +=		net/libnpupnp>=4.2.1
CONFIGURE_ARGS +=	-DWITH_NPUPNP=ON

post-install:
	mv ${PREFIX}/{share/,}man/man1/gerbera.1
	rm -r ${PREFIX}/share/man/

.include <bsd.port.mk>
