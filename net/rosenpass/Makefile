COMMENT=	Wireguard-based post-quantum VPN

GH_ACCOUNT =		rosenpass
GH_PROJECT =		rosenpass
GH_TAGNAME =		v0.1.1

CATEGORIES =		net security

HOMEPAGE = 	https://rosenpass.eu/
MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

# MIT/Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

MODULES =		devel/cargo
BUILD_DEPENDS =		devel/llvm \
			security/rust-ring

RUN_DEPENDS =		net/wireguard-tools \
			security/libsodium \
			shells/bash

MAKE_ENV =		LIBCLANG_PATH="${LOCALBASE}/lib/"

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc
MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release
OUT_DIR =		${RELEASE_DIR}/build/rosenpass-*/out

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rp ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
