# $OpenBSD: Makefile,v 1.11 2019/02/18 10:05:39 ajacoutot Exp $

# Update for chromaprint, fixes issues on arm/ppc
# Don't require boost anymore
# Code uses modern ffmpeg api
# Drop tests, see below

# py/3-acoustid works fine with it, there is no test but
# upstream provides some testing facility (see
# https://pypi.org/project/pyacoustid/ "running")

COMMENT =		audio fingerprint extraction library

GH_ACCOUNT =		acoustid
GH_PROJECT =		chromaprint
GH_TAGNAME =		v1.4.3

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

CONFIGURE_ARGS =	-DBUILD_TOOLS=ON

# Tests requires a copy of devel/gtest *sources*
# see https://github.com/acoustid/chromaprint#unit-tests
NO_TEST =		Yes

.include <bsd.port.mk>
