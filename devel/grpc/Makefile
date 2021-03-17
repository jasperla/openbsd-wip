# $OpenBSD$

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???

COMMENT =	RPC library framework

GH_ACCOUNT =	grpc
GH_PROJECT =	grpc
GH_TAGNAME =	v1.33.2

SHARED_LIBS = \
	address_sorting 0.0 \
	gpr 0.0 \
	grpc++ 0.0 \
	grpc++_alts 0.0 \
	grpc++_error_details 0.0 \
	grpc++_reflection 0.0 \
	grpc++_unsecure 0.0 \
	grpc 0.0 \
	grpc_plugin_support 0.0 \
	grpc_unsecure 0.0 \
	grpcpp_channelz 0.0 \
	upb 0.0

CATEGORIES =	devel
HOMEPAGE =	https://grpc.io/

#MAINTAINER =		???

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} absl_bad_optional_access absl_bad_variant_access
WANTLIB += absl_base absl_city absl_civil_time absl_cord absl_debugging_internal
WANTLIB += absl_demangle_internal absl_exponential_biased absl_graphcycles_internal
WANTLIB += absl_hash absl_hashtablez_sampler absl_int128 absl_log_severity
WANTLIB += absl_malloc_internal absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_spinlock_wait absl_stacktrace absl_status absl_str_format_internal
WANTLIB += absl_strings absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone c cares
WANTLIB += crypto m protobuf protoc re2 ssl z

COMPILER =		base-clang ports-gcc

# Any modules we may be using
MODULES =		devel/cmake

# Dependencies
LIB_DEPENDS =		devel/protobuf \
			devel/re2 \
			math/absl-cpp \
			net/libcares

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DgRPC_ABSL_PROVIDER=package \
			-DgRPC_CARES_PROVIDER=package \
			-DgRPC_PROTOBUF_PROVIDER=package \
			-DgRPC_RE2_PROVIDER=package \
			-DgRPC_SSL_PROVIDER=package \
			-DgRPC_ZLIB_PROVIDER=package

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# needs gtest
NO_TEST =		Yes

.include <bsd.port.mk>
