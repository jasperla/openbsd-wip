# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	idiomatic, lean, fast & safe pure Rust implementation of Git

GH_ACCOUNT =	Byron
GH_PROJECT =	gitoxide
GH_TAGNAME =	v0.36.0

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0, MIT
PERMIT_PACKAGE =	Yes

LIB_DEPENDS +=		net/curl
BUILD_DEPENDS +=	databases/sqlite3

WANTLIB +=	${MODCARGO_WANTLIB} m curl

MODULES =	devel/cargo

MODCARGO_CRATES_KEEP +=	libsqlite3-sys

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

# Set version during build
post-patch:
	sed -i 's,%VERSION%,${GH_TAGNAME:S/v//},' ${WRKSRC}/build.rs

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/gix ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ein ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
