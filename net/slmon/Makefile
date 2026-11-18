COMMENT =	unofficial Starlink dish monitor

V =		0.1
REVISION =	1
DISTNAME =	slmon-${V}

SITES =		file:///tlaptop.f/todd/distfiles/

CATEGORIES =	net
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

# C++17
COMPILER =	base-clang ports-gcc

P5SITE =	libdata/perl5/site_perl
P5ARCH =	${P5SITE}/${MACHINE_ARCH}-openbsd
SUBST_VARS +=	P5ARCH P5SITE

WANTLIB +=	${COMPILER_LIBCXX} c++abi execinfo m pthread util
WANTLIB +=	gpr grpc grpc++ protobuf utf8_range utf8_validity
WANTLIB +=	absl_base absl_base_cpu_detect absl_city absl_civil_time
WANTLIB +=	absl_cord absl_cord_internal absl_cordz_functions
WANTLIB +=	absl_cordz_handle absl_cordz_info absl_crc32c
WANTLIB +=	absl_crc_cord_state absl_crc_internal absl_debugging_internal
WANTLIB +=	absl_decode_rust_punycode absl_demangle_internal
WANTLIB +=	absl_demangle_rust absl_die_if_null absl_examine_stack
WANTLIB +=	absl_exponential_biased absl_flags_commandlineflag
WANTLIB +=	absl_flags_commandlineflag_internal absl_flags_config
WANTLIB +=	absl_flags_internal absl_flags_marshalling
WANTLIB +=	absl_flags_private_handle_accessor absl_flags_program_name
WANTLIB +=	absl_flags_reflection absl_graphcycles_internal absl_hardening
WANTLIB +=	absl_hash absl_hashtablez_sampler absl_int128
WANTLIB +=	absl_kernel_timeout_internal absl_leak_check absl_log_entry
WANTLIB +=	absl_log_globals absl_log_initialize absl_log_internal_check_op
WANTLIB +=	absl_log_internal_conditions absl_log_internal_fnmatch
WANTLIB +=	absl_log_internal_format absl_log_internal_globals
WANTLIB +=	absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB +=	absl_log_internal_nullguard absl_log_internal_proto
WANTLIB +=	absl_log_internal_structured_proto absl_log_severity
WANTLIB +=	absl_log_sink absl_malloc_internal absl_random_distributions
WANTLIB +=	absl_random_internal_entropy_pool absl_random_internal_platform
WANTLIB +=	absl_random_internal_randen absl_random_internal_randen_hwaes
WANTLIB +=	absl_random_internal_randen_hwaes_impl
WANTLIB +=	absl_random_internal_randen_slow
WANTLIB +=	absl_random_internal_seed_material
WANTLIB +=	absl_random_seed_gen_exception absl_random_seed_sequences
WANTLIB +=	absl_raw_hash_set absl_raw_logging_internal absl_source_location
WANTLIB +=	absl_spinlock_wait absl_stacktrace absl_status absl_statusor
WANTLIB +=	absl_str_format_internal absl_strerror absl_strings
WANTLIB +=	absl_strings_internal absl_symbolize absl_synchronization
WANTLIB +=	absl_throw_delegate absl_time absl_time_zone
WANTLIB +=	absl_tracing_internal absl_utf8_for_code_point
WANTLIB +=	absl_vlog_config_internal

LIB_DEPENDS =	devel/abseil-cpp \
		devel/protobuf \
		net/grpc

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-DBI \
		security/p5-IO-Socket-SSL

# Regress needs PostgreSQL, a pty, and the live dish.
NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} all \
		GRPC_CPP_PLUGIN=${LOCALBASE}/bin/grpc_cpp_plugin

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} install \
		DESTDIR=${DESTDIR} PREFIX=${TRUEPREFIX} SKIP_RCD=yes

.include <bsd.port.mk>
