# $OpenBSD: Makefile,v 1.12 2015/03/16 18:07:44 naddy Exp $

COMMENT =		c++ protocol buffers

V =			2.6.1
DISTNAME =		protobuf-$V

SHARED_LIBS +=		protobuf	2.0   # 7.0
SHARED_LIBS +=		protoc		2.0   # 7.0
SHARED_LIBS +=		protobuf-lite	2.0   # 7.0

CATEGORIES =		devel

HOMEPAGE =		https://developers.google.com/protocol-buffers/

MAINTAINER =		Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread stdc++ z

MASTER_SITES =	https://github.com/google/protobuf/releases/download/v$V/

TEST_DEPENDS =	devel/gtest

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --with-zlib 

.include <bsd.port.mk>
