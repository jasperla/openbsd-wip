# $OpenBSD: Makefile,v 1.26 2018/06/29 22:16:14 espie Exp $

COMMENT-main =		infinite-world block sandbox game client
COMMENT-server =	infinite-world block sandbox game server

PKGNAME-main =		minetest-${GH_TAGNAME}
PKGNAME-server =	minetest-server-${GH_TAGNAME}

GH_ACCOUNT =		minetest
GH_PROJECT =		minetest
GH_TAGNAME =		0.4.17.1

CATEGORIES =		games x11

REVISION-main =		3

HOMEPAGE =		http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -server

.include <bsd.port.arch.mk>

WANTLIB += ${COMPILER_LIBCXX} c curl curses form gmp hiredis
WANTLIB += iconv intl jsoncpp leveldb luajit-${MODLUA_VERSION}
WANTLIB += m pq spatialindex sqlite3 z

WANTLIB-main += ${WANTLIB} GL GLU ICE Irrlicht SM X11 Xext
WANTLIB-main += Xxf86vm bz2 freetype jpeg ogg openal png
WANTLIB-main += vorbis vorbisfile

MODULES =		devel/cmake \
			lang/lua

BUILD_DEPENDS =		devel/gettext-tools \
			devel/doxygen

RUN_DEPENDS-main =	devel/desktop-file-utils \
			games/minetest,-server \
			x11/gtk+3,-guic

LIB_DEPENDS =		databases/leveldb \
			databases/libhiredis \
			databases/sqlite3 \
			databases/postgresql \
			devel/gmp \
			devel/jsoncpp \
			geo/spatialindex \
			lang/luajit \
			net/curl

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/libvorbis \
			audio/openal \
			x11/irrlicht

LIB_DEPENDS-server =	${LIB_DEPENDS} \
			devel/gettext

CONFIGURE_ARGS =	-DENABLE_GETTEXT=TRUE \
			-DCUSTOM_MANDIR=${PREFIX}/man \
			-DENABLE_SYSTEM_JSONCPP=TRUE \
			-DUSE_GPROF=TRUE \
			-DBUILD_SERVER=TRUE

CONFIGURE_ENV +=	CXXFLAGS="-I${X11BASE}/include"

NO_TEST =		Yes
.include <bsd.port.mk>
