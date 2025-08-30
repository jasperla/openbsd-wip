COMMENT =	texas holdem poker client, local or internet games

DISTNAME =	pokerth-1.1.3

GH_ACCOUNT =	pokerth
GH_PROJECT = 	pokerth
GH_COMMIT =	581581fc6237034e5c48699cf09c4143baa2be8f

CATEGORIES =	games

HOMEPAGE =	https://pokerth.net

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		x11/qt6

UPDATE_PLIST_OPTS =	-v

ALL_TARGET =	pokerth_client

FIX_CRLF_FILES = \
	src/third_party/websocketpp/websocketpp/sha1/sha1.hpp

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

RUN_DEPENDS +=	devel/desktop-file-utils

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto

.include <bsd.port.mk>
