COMMENT =		HTTP/2-based RPC framework

MODPY_DISTV =		1.83.0
DISTNAME =		grpcio-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://grpc.io/docs/languages/python/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} absl_atomic_hook_test_helper absl_base
WANTLIB += absl_borrowed_fixup_buffer absl_city absl_civil_time
WANTLIB += absl_cord absl_cord_internal absl_cordz_functions absl_cordz_handle
WANTLIB += absl_cordz_info absl_cordz_sample_token absl_crc32c
WANTLIB += absl_crc_cord_state absl_crc_cpu_detect absl_crc_internal
WANTLIB += absl_debugging_internal absl_decode_rust_punycode absl_demangle_internal
WANTLIB += absl_demangle_rust absl_die_if_null absl_examine_stack
WANTLIB += absl_exception_safety_testing absl_exponential_biased
WANTLIB += absl_failure_signal_handler absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_parse
WANTLIB += absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB += absl_flags_reflection absl_flags_usage absl_flags_usage_internal
WANTLIB += absl_generic_printer_internal absl_graphcycles_internal
WANTLIB += absl_hash absl_hash_generator_testing absl_hashtable_profiler
WANTLIB += absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_flags absl_log_globals
WANTLIB += absl_log_initialize absl_log_internal_check_op absl_log_internal_conditions
WANTLIB += absl_log_internal_fnmatch absl_log_internal_format
WANTLIB += absl_log_internal_globals absl_log_internal_log_sink_set
WANTLIB += absl_log_internal_message absl_log_internal_nullguard
WANTLIB += absl_log_internal_proto absl_log_internal_structured_proto
WANTLIB += absl_log_internal_test_actions absl_log_internal_test_helpers
WANTLIB += absl_log_internal_test_matchers absl_log_severity absl_log_sink
WANTLIB += absl_malloc_internal absl_per_thread_sem_test_common
WANTLIB += absl_periodic_sampler absl_poison absl_pow10_helper
WANTLIB += absl_profile_builder absl_random_distributions absl_random_internal_distribution_test_util
WANTLIB += absl_random_internal_entropy_pool absl_random_internal_platform
WANTLIB += absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB += absl_random_internal_randen_hwaes_impl absl_random_internal_randen_slow
WANTLIB += absl_random_internal_seed_material absl_random_seed_gen_exception
WANTLIB += absl_random_seed_sequences absl_raw_hash_set absl_raw_logging_internal
WANTLIB += absl_scoped_mock_log absl_scoped_set_env absl_spinlock_test_common
WANTLIB += absl_spinlock_wait absl_stack_consumption absl_stacktrace
WANTLIB += absl_status absl_status_matchers absl_statusor absl_str_format_internal
WANTLIB += absl_strerror absl_strings absl_strings_internal absl_symbolize
WANTLIB += absl_synchronization absl_test_instance_tracker absl_throw_delegate
WANTLIB += absl_time absl_time_internal_test_util absl_time_zone
WANTLIB += absl_tracing_internal absl_utf8_for_code_point absl_vlog_config_internal
WANTLIB += cares crypto m re2 ssl z

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/abseil-cpp:patch \
			devel/py-wheel \
			lang/cython \
			sysutils/xxhash

LIB_DEPENDS =		devel/abseil-cpp \
			net/libcares \
			textproc/re2

# find system libraries, avoid warning spam
CFLAGS +=		-I/usr/local/include \
			-Wno-ignored-attributes \
			-Wno-deprecated-declarations
# cut back on '-l absl_*'
LDFLAGS +=		-Wl,--as-needed
# honour DEBUG
MAKE_ENV =		GRPC_PYTHON_CFLAGS=${CFLAGS:Q} \
			GRPC_PYTHON_LDFLAGS=${LDFLAGS:Q}

.for _dep in ABSL CARES OPENSSL RE2 ZLIB
MAKE_ENV +=		GRPC_PYTHON_BUILD_SYSTEM_${_dep}=True
.endfor

BUNDLES_DIR =		${WRKSRC}/third_party
# system xxhash (header-only) is available through CFLAGS
UNUSED_BUNDLES =	abseil-cpp boringssl-with-bazel cares re2 zlib xxhash

post-extract:
	cd ${BUNDLES_DIR} && rm -rf ${UNUSED_BUNDLES}
	# Cython extension needs third_party/abseil-cpp/absl/log/initialize.cc
	ln -sf ${WRKDIR}/devel/abseil-cpp/abseil-cpp-*/ ${BUNDLES_DIR}/abseil-cpp

.include <bsd.port.mk>
