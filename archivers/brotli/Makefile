# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		generic lossless compressor

V =			0.2.0
DISTNAME =		brotli-$V

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/google/brotli

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v${V}
MASTER_SITES =		${MASTER_SITES_GITHUB}

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*

USE_GMAKE =		Yes
MAKE_ENV =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

WRKSRC =		${WRKDIST}/tools

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bro ${PREFIX}/bin

do-test:
	cd ${WRKDIST}/tests && env -i ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET} ${TEST_LOG}

.include <bsd.port.mk>
