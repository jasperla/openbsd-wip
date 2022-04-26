# $OpenBSD$

COMMENT =	compilation database generator for clang tooling

GH_ACCOUNT =	rizsotto
GH_PROJECT =	bear
GH_TAGNAME =	3.0.2

CATEGORIES =	devel

#MAINTAINER =	???

# GPL 3.0+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_debugging_internal
WANTLIB += absl_demangle_internal absl_exponential_biased absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_log_severity
WANTLIB += absl_malloc_internal absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_status absl_str_format_internal
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone address_sorting
WANTLIB += c cares crypto fmt gpr grpc grpc++ m protobuf re2 spdlog
WANTLIB += ssl upb z

# C++17 support required
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

# Header-only library
BUILD_DEPENDS =		devel/nlohmann-json

LIB_DEPENDS =		devel/grpc \
			devel/fmtlib \
			devel/protobuf \
			devel/spdlog

# wants googletest
CONFIGURE_ARGS =	-DENABLE_UNIT_TESTS=No
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:C/bear/Bear/}

.include <bsd.port.mk>
