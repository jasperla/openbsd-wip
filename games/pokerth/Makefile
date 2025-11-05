BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

DIST_TUPLE =	github jggimi pokerth-openbsd 33dc9537287e561a8fc7f0302c79228622f75b92 .
V =		1.1.2pl20251105.1
PKGNAME =	pokerth-${V}

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake x11/qt6
SUBST_VARS +=	MODQT_QTDIR V

ALL_TARGET =	pokerth_client

CONFIGURE_ARGS +=		-DCMAKE_BUILD_TYPE=RelWithDebInfo
DEBUG_PACKAGES =		${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	devel/sdl
LIB_DEPENDS +=	devel/sdl-mixer

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Sql
WANTLIB += Qt6Widgets Qt6Xml SDL SDL_mixer boost_atomic-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += curl m protobuf sqlite3 ssl

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto && \
	${SUBST_CMD} pokerth.desktop src/game_defs.h

.include <bsd.port.mk>
