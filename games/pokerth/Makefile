BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

DIST_TUPLE =	github jggimi pokerth-openbsd 5dd215484b58386019fd8d1896547f51505ac2ce .
V =		1.1.2pl20251110
PKGNAME =	pokerth-${V}

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake x11/qt6
SUBST_VARS +=	MODQT_QTDIR V


CONFIGURE_ARGS +=		-DCMAKE_BUILD_TYPE=RelWithDebInfo
MODCMAKE_LDFLAGS += -L${LOCALBASE}/lib -liconv

DEBUG_PACKAGES =		${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtdeclarative
LIB_DEPENDS +=	x11/qt6/qtmultimedia
LIB_DEPENDS +=	x11/qt6/qtsvg

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6QuickControls2 Qt6Sql
WANTLIB += Qt6Svg Qt6Widgets Qt6Xml boost_atomic-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += curl iconv m protobuf ssl

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto && \
	${SUBST_CMD} pokerth.desktop src/game_defs.h

.include <bsd.port.mk>
