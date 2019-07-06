# $OpenBSD: Makefile,v 1.11 2019/02/18 10:05:39 ajacoutot Exp $

# Update for chromaprint, fixes issues on arm/ppc (needs more testing
# there as now tests are enabled)
# Don't require boost anymore
# Code uses modern ffmpeg api

COMMENT =		audio fingerprint extraction library

GH_ACCOUNT =		acoustid
GH_PROJECT =		chromaprint
GH_TAGNAME =		v1.4.3

# Requires gtest *source code* for tests even for a regular build
# see https://github.com/acoustid/chromaprint#unit-tests
# Due to gtest's "release-version.tar.gz" generic filename, switch
# to the commit instead to avoid clashing with the port.
# XXX Sync with chromaprint updates; current version: 1.8.1
GTEST_VER =		2fe3bd994b3189899d93f1d5a881e725e046fdc2
MASTER_SITES0 =		https://github.com/google/googletest/archive/
SUPDISTFILES =		${GTEST_VER}.tar.gz:0

SHARED_LIBS =		chromaprint               2.0 # 0.1

CATEGORIES =		audio devel

HOMEPAGE =		https://acoustid.org/chromaprint

# MIT with LGPL2.1+ parts
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avformat avutil c m swresample

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib
LIB_DEPENDS =		graphics/ffmpeg

CONFIGURE_ARGS =	-DBUILD_TOOLS=ON \
			-DBUILD_TESTS=ON \
			-DGTEST_ROOT="${WRKSRC}/googletest-${GTEST_VER}/googletest/"
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

TEST_TARGET =	check

post-extract:
	cd ${WRKSRC} && \
		tar xzf ${FULLDISTDIR}/${GTEST_VER}.tar.gz

.include <bsd.port.mk>
