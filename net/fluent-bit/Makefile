# ld: error: cannot place lib/monkey/library/libco.a(libco.c.o):(.text) into .text: --execute-only does not support intermingling data and code
USE_NOEXECONLY =	Yes

COMMENT =		fast and lightweight data forwarder
DIST_TUPLE =		github	fluent	fluent-bit	v5.1.3	.
CATEGORIES =		net sysutils

SHARED_LIBS =		fluent-bit	0.0

HOMEPAGE =		https:/fluentbit.io

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c cares crypto execinfo m msgpack-c
WANTLIB += nghttp2 sqlite3 ssl yaml-0 zstd

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/bison

LIB_DEPENDS =		archivers/zstd \
			databases/sqlite3 \
			devel/libyaml \
			devel/msgpack \
			net/libcares \
			www/nghttp2

EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
CONFIG_FILE =		${PKGSTEM}.yaml
SUBST_VARS =		CONFIG_FILE

# https://docs.fluentbit.io/manual/installation/downloads/source/build-and-install

CONFIGURE_ARGS =	-DFLB_PREFER_SYSTEM_LIBS=Yes \
			-DCMAKE_INSTALL_SYSCONFDIR=${EXAMPLES_DIR:H}

# picked up automatically, but not needed (for now)
IGNORE_PKGS =		Git \
			PostgreSQL

# WAMR not ported to OpenBSD
DISABLE_OPTS =		WASM

# cannot find its own "sql.h"
DISABLE_OPTS +=		PROCESSOR_SQL

# wants C++17
DISABLE_OPTS +=		USE_SIMDUTF

# missing defines
DISABLE_OPTS +=		IN_SERIAL

# wants OpenSSL-only functions
DISABLE_OPTS +=		KAFKA

# not available on octeon where i need fluent bit
DISABLE_OPTS +=		LUAJIT

CONFIGURE_ARGS +=	${IGNORE_PKGS:=-DCMAKE_DISABLE_FIND_PACKAGE_%=Yes}
CONFIGURE_ARGS +=	${DISABLE_OPTS:=-DFLB_%=No}

post-install:
	${INSTALL_DATA} ${FILESDIR}/${CONFIG_FILE} ${EXAMPLES_DIR}/

.include <bsd.port.mk>
