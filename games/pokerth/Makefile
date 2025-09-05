COMMENT =	texas holdem poker client, local or internet games

DIST_TUPLE =	github jggimi pokerth-openbsd 2025.09.04 .
PKGNAME =	pokerth-2025.09.04

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake x11/qt6
SUBST_VARS +=	MODQT_QTDIR

ALL_TARGET =	pokerth_client

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	devel/sdl
LIB_DEPENDS +=	devel/sdl-mixer
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
	protoc --cpp_out=src/third_party/protobuf pokerth.proto && \
	${SUBST_CMD} pokerth.desktop

.include <bsd.port.mk>
