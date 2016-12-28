# $OpenBSD: Makefile,v 1.15 2016/10/01 11:54:15 naddy Exp $

COMMENT =		C++ protocol buffers

V =			3.1.0
DISTNAME =		protobuf-cpp-${V}
PKGNAME = 		protobuf-${V}

WRKDIST =		${WRKDIR}/protobuf-${V}

SHARED_LIBS +=  protobuf-lite             0.0 # 11.0
SHARED_LIBS +=  protobuf                  0.0 # 11.0
SHARED_LIBS +=  protoc                    0.0 # 11.0

CATEGORIES =		devel

HOMEPAGE =		https://developers.google.com/protocol-buffers/

WANTLIB += c m pthread z

MASTER_SITES =		https://github.com/google/protobuf/releases/download/v${V}/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

TEST_DEPENDS =		devel/gtest>=1.8.0

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib

.include <bsd.port.mk>
