# ld: error: cannot place lib/monkey/library/libco.a(libco.c.o):(.text) into .text: --execute-only does not support intermingling data and code
USE_NOEXECONLY =	Yes

COMMENT =		fast and lightweight data forwarder
DIST_TUPLE =		github	fluent	fluent-bit	v5.1.3	.
CATEGORIES =		net sysutils

SHARED_LIBS =		fluent-bit	0.0

HOMEPAGE =		https:/fluentbit.io/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c cares crypto m nghttp2 sqlite3
WANTLIB += ssl yaml-0 zstd

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/zstd \
			databases/sqlite3 \
			devel/libyaml \
			net/libcares \
			www/nghttp2

# https://docs.fluentbit.io/manual/installation/downloads/source/build-and-install

CONFIGURE_ARGS =	-DFLB_PREFER_SYSTEM_LIBS=Yes

# WAMR not ported to OpenBSD
CONFIGURE_ARGS +=	-DFLB_WASM=No

# cannot find its own "sql.h"
CONFIGURE_ARGS +=	-DFLB_PROCESSOR_SQL=No

# wants C++17
CONFIGURE_ARGS +=	-DFLB_USE_SIMDUTF=No

# missing defines
CONFIGURE_ARGS +=	-DFLB_IN_SERIAL=No

# wants OpenSSL-only functions
CONFIGURE_ARGS +=	-DFLB_KAFKA=No

.include <bsd.port.mk>
