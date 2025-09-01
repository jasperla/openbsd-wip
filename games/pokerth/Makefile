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

RUN_DEPENDS +=	devel/desktop-file-utils

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto

.include <bsd.port.mk>
