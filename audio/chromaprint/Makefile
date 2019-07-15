# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:32 sthen Exp $

# Update for chromaprint, fixes issues on arm/ppc (needs more testing
# there as now tests are enabled)
# Don't require boost anymore
# Code uses modern ffmpeg api
# Tests are working on macppc and amd64

COMMENT =		audio fingerprint extraction library

GH_ACCOUNT =		acoustid
GH_PROJECT =		chromaprint
GH_TAGNAME =		v1.4.3

SHARED_LIBS =		chromaprint               2.0 # 0.1

CATEGORIES =		audio devel

HOMEPAGE =		https://acoustid.org/chromaprint

# MIT with LGPL2.1+ parts
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c m swresample

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib \
			devel/gtest
LIB_DEPENDS =		graphics/ffmpeg

CONFIGURE_ARGS =	-DBUILD_TOOLS=ON \
			-DBUILD_TESTS=ON

TEST_TARGET =		check

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindGTest.cmake

.include <bsd.port.mk>
