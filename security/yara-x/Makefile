# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	pattern matching swiss knife for malware researchers

GH_ACCOUNT =	VirusTotal
GH_PROJECT =	yara-x
GH_TAGNAME =	v1.3.0

CATEGORIES =	security

# https://github.com/VirusTotal/yara-x
HOMEPAGE =	https://virustotal.github.io/yara-x/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

BUILD_DEPENDS +=	archivers/zstd

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

# Needed for link with crate linkme
# See https://github.com/dtolnay/linkme/issues/49
MODCARGO_RUSTFLAGS +=	-Clink-arg=-fuse-ld=lld \
			-Clink-arg=-Wl,-z,nostart-stop-gc

SEPARATE_BUILD =	Yes

# Generate shell completions for Bash/Fish/ZSH
post-build:
	${MODCARGO_TARGET_DIR}/release/yr completion bash > ${WRKDIST}/yr.bash
	${MODCARGO_TARGET_DIR}/release/yr completion fish > ${WRKDIST}/yr.fish
	${MODCARGO_TARGET_DIR}/release/yr completion zsh > ${WRKDIST}/yr.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/yr ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKDIST}/yr.bash \
		${PREFIX}/share/bash-completion/completions/yr
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKDIST}/yr.fish ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKDIST}/yr.zsh ${PREFIX}/share/zsh/site-functions/_yr

.include "crates.inc"

.include <bsd.port.mk>
