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


LIB_DEPENDS +=	devel/boost,-main devel/protobuf devel/sdl devel/sdl-mixer
LIB_DEPENDS +=	security/libgsasl

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB +=	${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network
WANTLIB +=	Qt6Sql Qt6Widgets Qt6Xml SDL SDL_mixer boost_atomic-mt
WANTLIB +=	boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB +=	boost_random-mt boost_regex-mt boost_system-mt boost_system-mt
WANTLIB +=	boost_thread-mt boost_thread-mt c crypto curl gsasl m protobuf
WANTLIB +=	sqlite3 ssl

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto

.include <bsd.port.mk>
