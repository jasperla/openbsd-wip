BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

V = 		2.0.3
DIST_TUPLE =	github pokerth pokerth v${V} .
PKGNAME =	pokerth-${V}

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake x11/qt6
SUBST_VARS +=	MODQT_QTDIR V

ALL_TARGET =	pokerth_client

CONFIGURE_ARGS +=   -DCMAKE_BUILD_TYPE=RelWithDebInfo
MODCMAKE_LDFLAGS += -L${LOCALBASE}/lib -liconv

DEBUG_PACKAGES =		${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtmultimedia

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Sql Qt6Widgets Qt6Xml boost_atomic-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB += boost_random-mt boost_regex-mt boost_thread-mt c crypto
WANTLIB += iconv m protobuf ssl


pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop

.include <bsd.port.mk>
