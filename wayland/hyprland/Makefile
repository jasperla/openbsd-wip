COMMENT =	dynamic tiling Wayland compositor

V =		0.57.0
DISTNAME =	source-v${V}
PKGNAME =	hyprland-${V}

# absl_borrowed_fixup_buffer
# absl_crc_cpu_detect

SITES =		https://github.com/hyprwm/Hyprland/releases/download/v${V}/

WRKDIST =	${WRKDIR}/hyprland-source

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://hyprland.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} EGL GL GLESv2
WANTLIB += SPIRV Xcursor absl_base

WANTLIB += absl_base_cpu_detect absl_city absl_civil_time absl_cord absl_cord_internal
WANTLIB += absl_cordz_functions absl_cordz_handle absl_cordz_info
WANTLIB += absl_crc32c absl_crc_cord_state
WANTLIB += absl_crc_internal absl_debugging_internal absl_decode_rust_punycode
WANTLIB += absl_demangle_internal absl_demangle_rust absl_examine_stack
WANTLIB += absl_exponential_biased absl_flags_commandlineflag
WANTLIB += absl_flags_commandlineflag_internal absl_flags_config
WANTLIB += absl_flags_internal absl_flags_marshalling absl_flags_private_handle_accessor
WANTLIB += absl_flags_program_name absl_flags_reflection absl_graphcycles_internal
WANTLIB += absl_hardening absl_hash absl_hashtablez_sampler absl_int128 absl_kernel_timeout_internal
WANTLIB += absl_leak_check absl_log_entry absl_log_globals absl_log_internal_check_op
WANTLIB += absl_log_internal_conditions absl_log_internal_fnmatch
WANTLIB += absl_log_internal_format absl_log_internal_globals
WANTLIB += absl_log_internal_log_sink_set absl_log_internal_message
WANTLIB += absl_log_internal_nullguard absl_log_internal_proto
WANTLIB += absl_log_internal_structured_proto absl_log_severity
WANTLIB += absl_log_sink absl_malloc_internal absl_raw_hash_set
WANTLIB += absl_raw_logging_internal absl_source_location absl_spinlock_wait absl_stacktrace
WANTLIB += absl_str_format_internal absl_strerror absl_strings
WANTLIB += absl_strings_internal absl_symbolize absl_synchronization
WANTLIB += absl_throw_delegate absl_time absl_time_zone absl_tracing_internal
WANTLIB += absl_utf8_for_code_point absl_vlog_config_internal
WANTLIB += aquamarine c cairo drm eis epoll-shim ereadline execinfo
WANTLIB += gbm gio-2.0 glib-2.0 glslang glslang-default-resource-limits
WANTLIB += gobject-2.0 harfbuzz hyprcursor hyprgraphics hyprlang
WANTLIB += hyprutils hyprwire input intl lib/inotify/inotify lcms2
WANTLIB += m muparser pango-1.0 pangocairo-1.0 pixman-1 re2
WANTLIB += tomlplusplus udis86 uuid wayland-server xcb xcb-composite
WANTLIB += xcb-errors xcb-icccm xcb-render xcb-res xcb-xfixes xkbcommon

MODULES =	devel/cmake \
		lang/lua \
		lang/python

MODLUA_VERSION =	5.5
MODLUA_SA =		True

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=Release \
			-DNO_SYSTEMD=ON \
			-DNO_UWSM=ON

BUILD_DEPENDS =	wayland/hyprwayland-scanner \
		wayland/hyprland-protocols \
		wayland/wayland-protocols \
		graphics/spirv-tools \
		textproc/glaze

LIB_DEPENDS =	wayland/aquamarine \
		devel/readline \
		wayland/hyprcursor \
		wayland/hyprgraphics \
		wayland/hyprlang \
		wayland/hyprutils \
		graphics/glslang \
		graphics/lcms2 \
		math/muparser \
		textproc/re2 \
		textproc/tomlplusplus \
		sysutils/e2fsprogs \
		x11/xcb-util-errors \
		wayland/wayland \
		x11/xkbcommon \
		wayland/libinput-openbsd \
		devel/epoll-shim \
		devel/udis86 \
		wayland/hyprwire \
		wayland/libei \
		devel/libinotify \
		${MODLUA_LIB_DEPENDS}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
