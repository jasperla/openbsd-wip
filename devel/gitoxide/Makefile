# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	idiomatic, lean, fast & safe pure Rust implementation of Git

GH_ACCOUNT =	Byron
GH_PROJECT =	gitoxide
GH_TAGNAME =	v0.46.0

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

# generate shell completions for Bash/ZSH/Fish
pre-install:
.for s in bash fish zsh
	cd ${WRKBUILD}/target/release && ./gix completions -s $s > gix.$s
	cd ${WRKBUILD}/target/release && ./ein completions -s $s > ein.$s
.endfor

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/gix ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ein ${PREFIX}/bin/

	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
.for s in gix ein
	${INSTALL_DATA} ${WRKBUILD}/target/release/$s.bash \
		${PREFIX}/share/bash-completion/completions/$s
	${INSTALL_DATA} ${WRKBUILD}/target/release/$s.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKBUILD}/target/release/$s.zsh \
		${PREFIX}/share/zsh/site-functions/_$s
.endfor

.include "crates.inc"

.include <bsd.port.mk>
