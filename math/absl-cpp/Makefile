# $OpenBSD$

COMMENT =	C++ library code designed to augment the STL

GH_ACCOUNT =	abseil
GH_PROJECT =	abseil-cpp
GH_TAGNAME =	20200923.2

SHARED_LIBS = \
	absl_bad_any_cast_impl 0.0 \
	absl_bad_optional_access 0.0 \
	absl_bad_variant_access 0.0 \
	absl_base 0.0 \
	absl_city 0.0 \
	absl_civil_time 0.0 \
	absl_cord 0.0 \
	absl_debugging_internal 0.0 \
	absl_demangle_internal 0.0 \
	absl_examine_stack 0.0 \
	absl_exponential_biased 0.0 \
	absl_failure_signal_handler 0.0 \
	absl_flags 0.0 \
	absl_flags_commandlineflag 0.0 \
	absl_flags_commandlineflag_internal 0.0 \
	absl_flags_config 0.0 \
	absl_flags_internal 0.0 \
	absl_flags_marshalling 0.0 \
	absl_flags_parse 0.0 \
	absl_flags_private_handle_accessor 0.0 \
	absl_flags_program_name 0.0 \
	absl_flags_reflection 0.0 \
	absl_flags_usage 0.0 \
	absl_flags_usage_internal 0.0 \
	absl_graphcycles_internal 0.0 \
	absl_hash 0.0 \
	absl_hashtablez_sampler 0.0 \
	absl_int128 0.0 \
	absl_leak_check 0.0 \
	absl_leak_check_disable 0.0 \
	absl_log_severity 0.0 \
	absl_malloc_internal 0.0 \
	absl_periodic_sampler 0.0 \
	absl_random_distributions 0.0 \
	absl_random_internal_distribution_test_util 0.0 \
	absl_random_internal_platform 0.0 \
	absl_random_internal_pool_urbg 0.0 \
	absl_random_internal_randen 0.0 \
	absl_random_internal_randen_hwaes 0.0 \
	absl_random_internal_randen_hwaes_impl 0.0 \
	absl_random_internal_randen_slow 0.0 \
	absl_random_internal_seed_material 0.0 \
	absl_random_seed_gen_exception 0.0 \
	absl_random_seed_sequences 0.0 \
	absl_raw_hash_set 0.0 \
	absl_raw_logging_internal 0.0 \
	absl_scoped_set_env 0.0 \
	absl_spinlock_wait 0.0 \
	absl_stacktrace 0.0 \
	absl_status 0.0 \
	absl_statusor 0.0 \
	absl_str_format_internal 0.0 \
	absl_strerror 0.0 \
	absl_strings 0.0 \
	absl_strings_internal 0.0 \
	absl_symbolize 0.0 \
	absl_synchronization 0.0 \
	absl_throw_delegate 0.0 \
	absl_time 0.0 \
	absl_time_zone 0.0

CATEGORIES =	math
HOMEPAGE =	https://abseil.io/
#MAINTAINER =		???

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# needs gtest
NO_TEST =		Yes

.include <bsd.port.mk>
