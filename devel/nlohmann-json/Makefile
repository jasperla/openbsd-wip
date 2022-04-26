# $OpenBSD$

COMMENT =	JSON for modern C++

# the "release" contain only json.hpp, and we want tests and CMake config file
V =		3.9.1
GH_ACCOUNT =	nlohmann
GH_PROJECT =	json
GH_TAGNAME =	v${V}
DISTNAME =	nlohmann-json-${V}

CATEGORIES =	devel

# a bit outdated
HOMEPAGE =	https://nlohmann.github.io/json/

#MAINTAINER =		???

# MIT
PERMIT_PACKAGE =	Yes

TEST_DATA_V =		3.0.0

MASTER_SITES0 =		https://github.com/nlohmann/json_test_data/archive/

DISTFILES =		${SUPDISTFILES:Mjson-*}

SUPDISTFILES =		json-${GH_TAGNAME:C/^v//}.tar.gz \
			json_test_data-{v}${TEST_DATA_V}.tar.gz:0

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

DEBUG_PACKAGES = ${BUILD_PACKAGES}

PSEUDO_FLAVORS =	tests
FLAVOR ?=

.if ${FLAVOR:Mtests}
DISTFILES +=		${SUPDISTFILES:Mjson_test_data-*}
CONFIGURE_ARGS +=	-DJSON_TestDataDirectory=${WRKDIR}/json_test_data-${TEST_DATA_V}
.else
CONFIGURE_ARGS +=	-DJSON_BuildTests=No
NO_TEST =		Yes
.endif

PKG_ARCH =	*

do-test:
	cd ${WRKBUILD}; \
	ctest --force-new-ctest-process -LE git_required
	# --exclude-regex "CMake.FileDownload|CTestTestUpload|RunCMake.ctest_submit"

.include <bsd.port.mk>
