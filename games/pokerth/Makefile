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

MODULES =	devel/cmake

# just build the client, no server or chatcleaner
ALL_TARGET =	pokerth_client

pre-configure:
	cd ${WRKSRC} && \
	protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
	protoc --cpp_out=src/third_party/protobuf pokerth.proto

.include <bsd.port.mk>
