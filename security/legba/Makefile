# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS = sparc64

COMMENT =	multiprotocol credentials bruteforcer, password enumerator

GH_ACCOUNT =	evilsocket
GH_PROJECT =	legba
GH_TAGNAME =	1.1.1

CATEGORIES =	security

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd

BUILD_DEPENDS += devel/llvm/19,-main \
		 archivers/zstd

LIB_DEPENDS+=	net/samba,-main \
		devel/llvm/19,-main \
		archivers/zstd

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

# For libzstd
MODCARGO_RUSTFLAGS +=   -L${LOCALBASE}/lib

# libclang needed for bindgen used from aws-lc-sys
MAKE_ENV =	LIBCLANG_PATH=${LOCALBASE}/llvm19/lib
MODCLANG_COMPILER_LINKS = no

# Needed to build OpenSSL lib. with openssl-sys crate (feature "vendored")
MODCARGO_CRATES +=	openssl-src	300.5.1+3.5.1	# MIT/Apache-2.0

MODCARGO_CRATES_KEEP+=	libsqlite3-sys \
			openssl-src \
			openssl-sys

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
