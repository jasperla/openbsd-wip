COMMENT =	texas holdem poker client, local or internet games

DIST_TUPLE =	github jggimi pokerth-openbsd d8d49f34ac9f5aafbbc9b97c9efbf96f57c32780 .
PKGNAME =	pokerth-2025.09.01

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake x11/qt6

ALL_TARGET =	pokerth_client

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

LIB_DEPENDS +=	devel/sdl devel/sdl-mixer devel/boost,-main
LIB_DEPENDS +=	security/libgsasl devel/protobuf

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Sql
WANTLIB += Qt6Widgets Qt6Xml c crypto curl m sqlite3 ssl
WANTLIB += SDL SDL_mixer boost_atomic-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt
WANTLIB += gsasl boost_system-mt boost_thread-mt

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto

.include <bsd.port.mk>
