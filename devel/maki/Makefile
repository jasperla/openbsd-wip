# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
# aws-lc-rs has old Keccak perlasm
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "aarch64"
USE_NOEXECONLY=	Yes
.endif

COMMENT =	efficient AI coding agent extendable by Lua plugins

GH_ACCOUNT =	tontinton
GH_PROJECT =	maki
GH_TAGNAME =	v0.7.0

# Rust crates downloaded via git
CROSSTERM =	94ed7154e35d24a2f643c61760e1eb05b8ca9e63
SYNTECT =	01df275f6f25da670e5ba5b7128cb89d03795119
DIST_TUPLE +=	github crossterm-rs crossterm ${CROSSTERM} ../crossterm
DIST_TUPLE +=	github tontinton syntect ${SYNTECT} ../syntect

CATEGORIES =	devel

# https://github.com/tontinton/maki/
HOMEPAGE = 	https://maki.sh/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB =	${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD=	Yes

# NO_TEST =	Yes

.include "crates.inc"

.include <bsd.port.mk>
