BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

V =		2.0.8
#DIST_TUPLE =	github pokerth pokerth v${V} .
# beyond 2.0.8 -- qt6-qml CI
DIST_TUPLE =	github pokerth pokerth 60d7d41c9ac2b9f9b2c10f1713ebbea8b5eb904f .

PKGNAME =	pokerth-${V}pl20260623

CATEGORIES =	games

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Sql Qt6Widgets Qt6Xml boost_atomic-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB += boost_random-mt boost_regex-mt boost_thread-mt c crypto
WANTLIB += iconv m protobuf ssl

MODULES =	devel/cmake \
		x11/qt6
SUBST_VARS +=	MODQT_QTDIR V

ALL_TARGET =	pokerth_client pokerth_qml-client

MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib -liconv
DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS +=	x11/qt6/qtwebsockets

LIB_DEPENDS +=	devel/boost,-main
LIB_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=	x11/qt6/qtmultimedia

RUN_DEPENDS +=	devel/desktop-file-utils

pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop

.include <bsd.port.mk>
