# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.0.0

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MODULES =		gcc4
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		*

MAKE_ENV =		CC="${CC}" CFLAGS="${CFLAGS}"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

WRKSRC =		"${WRKDIST}/programs"

ALL_TARGET =		zstd
TEST_TARGET =		all test

do-test:
	cd "${WRKDIST}/tests" && ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET} ${TEST_LOG}

.include <bsd.port.mk>
