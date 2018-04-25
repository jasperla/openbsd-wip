# $OpenBSD$

COMMENT =		Tox client library

V =			0.2.2
DISTNAME =		toxcore-$V

GH_ACCOUNT =		TokTok
GH_PROJECT =		c-toxcore
GH_TAGNAME =		v$V

CATEGORIES =		net telephony

HOMEPAGE =		https://tox.chat/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  	toxcore                   0.0 # 0.0

WANTLIB = c config m opus pthread sodium vpx ${COMPILER_LIBCXX}

MODULES =		devel/cmake

BUILD_DEPENDS +=	devel/check \
			devel/libtool
LIB_DEPENDS =		audio/opus \
			devel/libconfig \
			multimedia/libvpx \
			security/libsodium

SEPATATE_BUILD =	Yes

TEST_TARGET =		check

.include <bsd.port.mk>
