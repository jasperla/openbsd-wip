BROKEN-i386 =	protobuf/abseil problems

COMMENT =	texas holdem poker client, local or internet games

DIST_TUPLE =	github jggimi pokerth-openbsd dadd0f526459f2fa7ff0640637663d084902773e .

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
WANTLIB += Qt6Network Qt6Sql Qt6Widgets Qt6Xml c crypto iconv
WANTLIB += m ssl

pre-build:
	${SUBST_CMD} ${WRKSRC}/pokerth.desktop

.include <bsd.port.mk>
