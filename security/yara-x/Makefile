# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	pattern matching swiss knife for malware researchers

GH_ACCOUNT =	VirusTotal
GH_PROJECT =	yara-x
GH_TAGNAME =	v0.14.0

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

# TODO generate and install shell completions for Bash/Fish/ZSH

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/yr ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
