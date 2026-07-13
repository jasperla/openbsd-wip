COMMENT =		An efficient re-implementation of Electrum Server in Rust

# electrs uses rocksdb, which is 64-bit only
ONLY_FOR_ARCHS =	${LP64_ARCHS}

GH_ACCOUNT =		romanz
GH_PROJECT =		electrs
GH_TAGNAME =		v0.10.7

CATEGORIES =		net

HOMEPAGE =		https://github.com/romanz/electrs

MAINTAINER =		Timothy M. Redaelli <timothy@fsfe.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo lang/clang
MODCARGO_RUSTFLAGS =	-L${PREFIX}/lib

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "crates.inc"

# for rocksdb bindings
MODCARGO_ENV=		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MAKE_ENV +=		DEP_ZSTD_INCLUDE=${LOCALBASE}/include

# librocksdb-sys looks for libclang.so
BUILD_DEPENDS=		devel/llvm/16
LIB_DEPENDS +=		archivers/zstd

WANTLIB +=		${COMPILER_LIBCXX} c m zstd

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/electrs ${PREFIX}/bin/

.include <bsd.port.mk>
