# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	idiomatic, lean, fast & safe pure Rust implementation of Git

GH_ACCOUNT =	Byron
GH_PROJECT =	gitoxide
GH_TAGNAME =	v0.37.0

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
post-build:
.for s in bash fish zsh
	cd ${WRKBUILD}/target/release && ./gix completions -s $s > gix.$s
	cd ${WRKBUILD}/target/release && ./ein completions -s $s > ein.$s
.endfor

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/gix ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ein ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKBUILD}/target/release/gix.bash \
		${PREFIX}/share/bash-completion/completions/gix
	${INSTALL_DATA} ${WRKBUILD}/target/release/ein.bash \
		${PREFIX}/share/bash-completion/completions/ein
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKBUILD}/target/release/gix.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKBUILD}/target/release/ein.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKBUILD}/target/release/gix.zsh \
		${PREFIX}/share/zsh/site-functions/_gix
	${INSTALL_DATA} ${WRKBUILD}/target/release/ein.zsh \
		${PREFIX}/share/zsh/site-functions/_ein

.include "crates.inc"

.include <bsd.port.mk>
