BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

DIST_TUPLE =	github jggimi pokerth-openbsd ce8b00e552f57f985483bdb8a3c02a58b99c5238 .

PKGNAME =	pokerth-2.0beta

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake x11/qt6
SUBST_VARS +=	MODQT_QTDIR V

ALL_TARGET =	pokerth_client pokerth_dedicated_server

CONFIGURE_ARGS +=		-DCMAKE_BUILD_TYPE=RelWithDebInfo
MODCMAKE_LDFLAGS += -L${LOCALBASE}/lib -liconv

DEBUG_PACKAGES =		${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtmultimedia

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Sql Qt6Widgets Qt6Xml boost_atomic-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB += boost_random-mt boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += c crypto iconv m protobuf ssl

pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop

.include <bsd.port.mk>
